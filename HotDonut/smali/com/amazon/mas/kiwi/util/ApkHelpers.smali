.class public Lcom/amazon/mas/kiwi/util/ApkHelpers;
.super Ljava/lang/Object;
.source "ApkHelpers.java"


# static fields
.field private static final CONTENT_PREFIX:Ljava/lang/String; = "com.amazon.content.id."


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApkSignature(Ljava/lang/String;)[B
    .locals 8
    .param p0, "apkFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/mas/kiwi/util/ApkInvalidException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 141
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 142
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "apkFileName cannot be null or empty!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 145
    :cond_1
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 147
    .local v4, "jarFile":Ljava/util/jar/JarFile;
    :try_start_0
    invoke-static {v4}, Lcom/amazon/mas/kiwi/util/ApkHelpers;->scanJar(Ljava/util/jar/JarFile;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    invoke-static {v4}, Lcom/amazon/mas/kiwi/util/ApkHelpers;->getFirstSigningCert(Ljava/util/jar/JarFile;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 153
    .local v1, "cert":Ljava/security/cert/Certificate;
    if-nez v1, :cond_2

    move-object v6, v7

    .line 162
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    :goto_0
    return-object v6

    .line 148
    :catch_0
    move-exception v3

    .local v3, "e1":Ljava/lang/SecurityException;
    move-object v6, v7

    .line 149
    goto :goto_0

    .line 157
    .end local v3    # "e1":Ljava/lang/SecurityException;
    .restart local v1    # "cert":Ljava/security/cert/Certificate;
    :cond_2
    const/4 v2, 0x0

    .line 158
    .local v2, "certBytes":[B
    instance-of v6, v1, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_3

    .line 159
    move-object v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v5, v0

    .line 160
    .local v5, "xcert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v2

    .end local v5    # "xcert":Ljava/security/cert/X509Certificate;
    :cond_3
    move-object v6, v2

    .line 162
    goto :goto_0
.end method

.method private static getCodeSigners(Ljava/util/jar/JarFile;)[Ljava/security/CodeSigner;
    .locals 4
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;

    .prologue
    .line 196
    const/4 v2, 0x0

    .line 197
    .local v2, "signers":[Ljava/security/CodeSigner;
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 198
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .line 200
    .local v1, "je":Ljava/util/jar/JarEntry;
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getCodeSigners()[Ljava/security/CodeSigner;

    move-result-object v2

    .line 202
    if-eqz v2, :cond_0

    .line 206
    .end local v1    # "je":Ljava/util/jar/JarEntry;
    :cond_1
    return-object v2
.end method

.method public static getContentID(Ljava/util/jar/JarFile;)Ljava/lang/String;
    .locals 5
    .param p0, "apkSrc"    # Ljava/util/jar/JarFile;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "apkSrc must not be null!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 36
    :cond_0
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 37
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 38
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .line 40
    .local v1, "ent":Ljava/util/jar/JarEntry;
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 44
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/mas/kiwi/util/ApkHelpers;->getContentIDFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "contentID":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 50
    .end local v0    # "contentID":Ljava/lang/String;
    .end local v1    # "ent":Ljava/util/jar/JarEntry;
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getContentIDFromName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const-string v3, "com.amazon.content.id."

    .line 64
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name cannot be null or empty!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_1
    const-string v1, "com.amazon.content.id."

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 69
    .local v0, "contentIdIndex":I
    if-gez v0, :cond_2

    move-object v1, v4

    .line 77
    :goto_0
    return-object v1

    .line 73
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "com.amazon.content.id."

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_3

    move-object v1, v4

    .line 74
    goto :goto_0

    .line 77
    :cond_3
    const-string v1, "com.amazon.content.id."

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getFirstSigningCert(Ljava/util/jar/JarFile;)Ljava/security/cert/Certificate;
    .locals 5
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;

    .prologue
    const/4 v4, 0x0

    .line 179
    invoke-static {p0}, Lcom/amazon/mas/kiwi/util/ApkHelpers;->getCodeSigners(Ljava/util/jar/JarFile;)[Ljava/security/CodeSigner;

    move-result-object v2

    .line 180
    .local v2, "codeSigners":[Ljava/security/CodeSigner;
    const/4 v0, 0x0

    .line 181
    .local v0, "cert":Ljava/security/cert/Certificate;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 182
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/security/CodeSigner;->getSignerCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 183
    .local v1, "certs":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cert":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .line 187
    .end local v1    # "certs":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .restart local v0    # "cert":Ljava/security/cert/Certificate;
    :cond_0
    return-object v0
.end method

.method public static isSigned(Ljava/io/File;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "jarFile":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v0    # "jarFile":Ljava/util/jar/JarFile;
    .local v1, "jarFile":Ljava/util/jar/JarFile;
    :try_start_1
    invoke-static {v1}, Lcom/amazon/mas/kiwi/util/ApkHelpers;->isSigned(Ljava/util/jar/JarFile;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 128
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V

    return v2

    .end local v1    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v0    # "jarFile":Ljava/util/jar/JarFile;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V

    throw v2

    .end local v0    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v1    # "jarFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v0    # "jarFile":Ljava/util/jar/JarFile;
    goto :goto_0
.end method

.method public static isSigned(Ljava/util/jar/JarFile;)Z
    .locals 4
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 92
    if-nez p0, :cond_0

    .line 93
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "apkSrc must not be null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/amazon/mas/kiwi/util/ApkHelpers;->scanJar(Ljava/util/jar/JarFile;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    invoke-static {p0}, Lcom/amazon/mas/kiwi/util/ApkHelpers;->getCodeSigners(Ljava/util/jar/JarFile;)[Ljava/security/CodeSigner;

    move-result-object v0

    .line 108
    .local v0, "codeSigners":[Ljava/security/CodeSigner;
    if-eqz v0, :cond_1

    .end local v0    # "codeSigners":[Ljava/security/CodeSigner;
    :goto_0
    return v2

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e1":Ljava/lang/SecurityException;
    goto :goto_0

    .line 108
    .end local v1    # "e1":Ljava/lang/SecurityException;
    .restart local v0    # "codeSigners":[Ljava/security/CodeSigner;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static scanJar(Ljava/util/jar/JarFile;)V
    .locals 7
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 213
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    const/16 v5, 0x2000

    new-array v0, v5, [B

    .line 214
    .local v0, "buffer":[B
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 215
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/JarEntry;

    .line 216
    .local v4, "je":Ljava/util/jar/JarEntry;
    const/4 v3, 0x0

    .line 221
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v4}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 222
    :cond_1
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 230
    if-eqz v3, :cond_0

    .line 231
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 226
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Lcom/amazon/mas/kiwi/util/ApkInvalidException;

    invoke-direct {v5, v1}, Lcom/amazon/mas/kiwi/util/ApkInvalidException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_2

    .line 231
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v5

    .line 235
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "je":Ljava/util/jar/JarEntry;
    :cond_3
    return-void
.end method
