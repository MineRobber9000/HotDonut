.class Lcom/facebook/ImageResponseCache;
.super Ljava/lang/Object;
.source "ImageResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ImageResponseCache$BufferedHttpInputStream;,
        Lcom/facebook/ImageResponseCache$Options;
    }
.end annotation


# static fields
.field private static final REDIRECT_CONTENT_TAG:Ljava/lang/String;

.field static final TAG:Ljava/lang/String;

.field private static volatile imageCache:Lcom/facebook/FileLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-class v0, Lcom/facebook/ImageResponseCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ImageResponseCache;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/facebook/ImageResponseCache;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_Redirect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ImageResponseCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cacheImageFromStream(Landroid/content/Context;Ljava/net/URL;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 131
    invoke-static {p1}, Lcom/facebook/ImageResponseCache;->isCDNURL(Ljava/net/URL;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    :try_start_0
    invoke-static {p0}, Lcom/facebook/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/facebook/FileLruCache;

    move-result-object v0

    .line 136
    .local v0, "cache":Lcom/facebook/FileLruCache;
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/FileLruCache;->interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 141
    .end local v0    # "cache":Lcom/facebook/FileLruCache;
    :cond_0
    :goto_0
    return-object p2

    .line 137
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static cacheImageRedirect(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fromUrl"    # Ljava/net/URL;
    .param p2, "toUrl"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v1, 0x0

    .line 147
    .local v1, "redirectStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0}, Lcom/facebook/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/facebook/FileLruCache;

    move-result-object v0

    .line 148
    .local v0, "cache":Lcom/facebook/FileLruCache;
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/ImageResponseCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 149
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-static {v1}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 155
    .end local v0    # "cache":Lcom/facebook/FileLruCache;
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v2

    .line 153
    invoke-static {v1}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v2

    .line 153
    invoke-static {v1}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 154
    throw v2
.end method

.method static declared-synchronized getCache(Landroid/content/Context;)Lcom/facebook/FileLruCache;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const-class v1, Lcom/facebook/ImageResponseCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/ImageResponseCache;->imageCache:Lcom/facebook/FileLruCache;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/facebook/FileLruCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/facebook/ImageResponseCache;->TAG:Ljava/lang/String;

    new-instance v4, Lcom/facebook/FileLruCache$Limits;

    invoke-direct {v4}, Lcom/facebook/FileLruCache$Limits;-><init>()V

    invoke-direct {v0, v2, v3, v4}, Lcom/facebook/FileLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/FileLruCache$Limits;)V

    sput-object v0, Lcom/facebook/ImageResponseCache;->imageCache:Lcom/facebook/FileLruCache;

    .line 68
    :cond_0
    sget-object v0, Lcom/facebook/ImageResponseCache;->imageCache:Lcom/facebook/FileLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getCachedImageStream(Ljava/net/URL;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Lcom/facebook/ImageResponseCache$Options;->NONE:Ljava/util/EnumSet;

    invoke-static {p0, p1, v0}, Lcom/facebook/ImageResponseCache;->getCachedImageStream(Ljava/net/URL;Landroid/content/Context;Ljava/util/EnumSet;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static getCachedImageStream(Ljava/net/URL;Landroid/content/Context;Ljava/util/EnumSet;)Ljava/io/InputStream;
    .locals 7
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ImageResponseCache$Options;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "options":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ImageResponseCache$Options;>;"
    const/4 v2, 0x0

    .line 46
    .local v2, "imageStream":Ljava/io/InputStream;
    if-eqz p0, :cond_1

    .line 47
    sget-object v3, Lcom/facebook/ImageResponseCache$Options;->FOLLOW_REDIRECTS:Lcom/facebook/ImageResponseCache$Options;

    invoke-virtual {p2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/facebook/ImageResponseCache;->getRedirectedURL(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/facebook/ImageResponseCache;->isCDNURL(Ljava/net/URL;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/facebook/FileLruCache;

    move-result-object v0

    .line 54
    .local v0, "cache":Lcom/facebook/FileLruCache;
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 61
    .end local v0    # "cache":Lcom/facebook/FileLruCache;
    :cond_1
    :goto_0
    return-object v2

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/facebook/LoggingBehaviors;->CACHE:Lcom/facebook/LoggingBehaviors;

    const/4 v4, 0x5

    sget-object v5, Lcom/facebook/ImageResponseCache;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getImageStream(Ljava/net/URL;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    .line 75
    sget-object v0, Lcom/facebook/ImageResponseCache$Options;->FOLLOW_REDIRECTS:Lcom/facebook/ImageResponseCache$Options;

    sget-object v1, Lcom/facebook/ImageResponseCache$Options;->RETURN_STREAM_ON_HTTP_ERROR:Lcom/facebook/ImageResponseCache$Options;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 72
    invoke-static {p0, p1, v0}, Lcom/facebook/ImageResponseCache;->getImageStream(Ljava/net/URL;Landroid/content/Context;Ljava/util/EnumSet;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static getImageStream(Ljava/net/URL;Landroid/content/Context;Ljava/util/EnumSet;)Ljava/io/InputStream;
    .locals 6
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ImageResponseCache$Options;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "options":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ImageResponseCache$Options;>;"
    const-string v4, "url"

    invoke-static {p0, v4}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    const-string v4, "context"

    invoke-static {p1, v4}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const/4 v3, 0x0

    .line 85
    .local v3, "stream":Ljava/io/InputStream;
    const/4 v1, 0x1

    .line 86
    .local v1, "performRequest":Z
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 127
    :cond_1
    return-object v3

    .line 87
    :cond_2
    const/4 v1, 0x0

    .line 89
    invoke-static {p0, p1}, Lcom/facebook/ImageResponseCache;->getCachedImageStream(Ljava/net/URL;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v3

    .line 90
    if-nez v3, :cond_1

    .line 95
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 96
    .local v0, "connection":Ljava/net/HttpURLConnection;
    sget-object v4, Lcom/facebook/ImageResponseCache$Options;->FOLLOW_REDIRECTS:Lcom/facebook/ImageResponseCache$Options;

    invoke-virtual {p2, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 98
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 119
    sget-object v4, Lcom/facebook/ImageResponseCache$Options;->RETURN_STREAM_ON_HTTP_ERROR:Lcom/facebook/ImageResponseCache$Options;

    invoke-virtual {p2, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    new-instance v3, Lcom/facebook/ImageResponseCache$BufferedHttpInputStream;

    .end local v3    # "stream":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/facebook/ImageResponseCache$BufferedHttpInputStream;-><init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .restart local v3    # "stream":Ljava/io/InputStream;
    goto :goto_0

    .line 102
    :sswitch_0
    const-string v4, "location"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "redirectLocation":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 104
    invoke-static {p1, p0, v2}, Lcom/facebook/ImageResponseCache;->cacheImageRedirect(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;)V

    .line 105
    new-instance p0, Ljava/net/URL;

    .end local p0    # "url":Ljava/net/URL;
    invoke-direct {p0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 106
    .restart local p0    # "url":Ljava/net/URL;
    const/4 v1, 0x1

    .line 108
    goto :goto_0

    .line 115
    .end local v2    # "redirectLocation":Ljava/lang/String;
    :sswitch_1
    new-instance v4, Lcom/facebook/ImageResponseCache$BufferedHttpInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/facebook/ImageResponseCache$BufferedHttpInputStream;-><init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 112
    invoke-static {p1, p0, v4}, Lcom/facebook/ImageResponseCache;->cacheImageFromStream(Landroid/content/Context;Ljava/net/URL;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    .line 116
    goto :goto_0

    .line 98
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
    .end sparse-switch
.end method

.method private static getRedirectedURL(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v3, 0x0

    .line 159
    .local v3, "finalUrl":Ljava/net/URL;
    const/4 v5, 0x0

    .line 162
    .local v5, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-static {p0}, Lcom/facebook/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/facebook/FileLruCache;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 163
    .local v2, "cache":Lcom/facebook/FileLruCache;
    const/4 v7, 0x0

    .local v7, "redirectExists":Z
    move-object v6, v5

    .line 164
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .local v6, "reader":Ljava/io/InputStreamReader;
    :goto_0
    :try_start_1
    sget-object v10, Lcom/facebook/ImageResponseCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, p1, v10}, Lcom/facebook/FileLruCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .local v8, "stream":Ljava/io/InputStream;
    if-nez v8, :cond_1

    .line 181
    if-eqz v7, :cond_0

    .line 182
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v3    # "finalUrl":Ljava/net/URL;
    .local v4, "finalUrl":Ljava/net/URL;
    move-object v3, v4

    .line 188
    .end local v4    # "finalUrl":Ljava/net/URL;
    .restart local v3    # "finalUrl":Ljava/net/URL;
    :cond_0
    invoke-static {v6}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    move-object v5, v6

    .line 191
    .end local v2    # "cache":Lcom/facebook/FileLruCache;
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .end local v7    # "redirectExists":Z
    .end local v8    # "stream":Ljava/io/InputStream;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    :goto_1
    return-object v3

    .line 165
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v2    # "cache":Lcom/facebook/FileLruCache;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "redirectExists":Z
    .restart local v8    # "stream":Ljava/io/InputStream;
    :cond_1
    const/4 v7, 0x1

    .line 168
    :try_start_2
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 169
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    const/16 v10, 0x80

    :try_start_3
    new-array v0, v10, [C

    .line 171
    .local v0, "buffer":[C
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v9, "urlBuilder":Ljava/lang/StringBuilder;
    :goto_2
    const/4 v10, 0x0

    array-length v11, v0

    invoke-virtual {v5, v0, v10, v11}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v1

    .local v1, "bufferLength":I
    if-gtz v1, :cond_2

    .line 175
    invoke-static {v5}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 178
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v6, v5

    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    goto :goto_0

    .line 173
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 184
    .end local v0    # "buffer":[C
    .end local v1    # "bufferLength":I
    .end local v2    # "cache":Lcom/facebook/FileLruCache;
    .end local v7    # "redirectExists":Z
    .end local v8    # "stream":Ljava/io/InputStream;
    .end local v9    # "urlBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v10

    .line 188
    :goto_3
    invoke-static {v5}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 186
    :catch_1
    move-exception v10

    .line 188
    :goto_4
    invoke-static {v5}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 187
    :catchall_0
    move-exception v10

    .line 188
    :goto_5
    invoke-static {v5}, Lcom/facebook/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 189
    throw v10

    .line 187
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v2    # "cache":Lcom/facebook/FileLruCache;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "redirectExists":Z
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_5

    .line 186
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v10

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 184
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v10

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_3
.end method

.method private static isCDNURL(Ljava/net/URL;)Z
    .locals 3
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    const/4 v1, 0x1

    .line 195
    if-eqz p0, :cond_2

    .line 196
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "uriHost":Ljava/lang/String;
    const-string v2, "fbcdn.net"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    .end local v0    # "uriHost":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 202
    .restart local v0    # "uriHost":Ljava/lang/String;
    :cond_1
    const-string v2, "fbcdn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "akamaihd.net"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    .end local v0    # "uriHost":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
