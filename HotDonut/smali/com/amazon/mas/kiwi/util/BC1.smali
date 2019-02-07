.class public Lcom/amazon/mas/kiwi/util/BC1;
.super Ljava/lang/Object;
.source "BC1.java"


# static fields
.field private static CHECKSUM_ALGORITHM:Ljava/lang/String; = null

.field private static final DIGEST_UPDATE_BUFFER_SIZE:I = 0x2800

.field private static final DIRECTORIES_TO_IGNORE_FOR_PARTIAL_CHECKSUM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SIZE_FOR_FULL_CHECKSUM:I = 0x1400000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "MD5"

    sput-object v0, Lcom/amazon/mas/kiwi/util/BC1;->CHECKSUM_ALGORITHM:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/amazon/mas/kiwi/util/BC1$1;

    invoke-direct {v0}, Lcom/amazon/mas/kiwi/util/BC1$1;-><init>()V

    sput-object v0, Lcom/amazon/mas/kiwi/util/BC1;->DIRECTORIES_TO_IGNORE_FOR_PARTIAL_CHECKSUM:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateFullChecksum(Ljava/io/File;Ljava/security/MessageDigest;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "digest"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/amazon/mas/kiwi/util/BC1;->updateMessageDigestWithInputStream(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 134
    return-void
.end method

.method private static calculatePartialChecksum(Ljava/io/File;Ljava/security/MessageDigest;[B)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "digest"    # Ljava/security/MessageDigest;
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    .line 147
    .local v3, "jar":Ljava/util/jar/JarFile;
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 148
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .line 151
    .local v1, "entry":Ljava/util/jar/JarEntry;
    invoke-static {v1}, Lcom/amazon/mas/kiwi/util/BC1;->isInDirectoryToIgnore(Ljava/util/jar/JarEntry;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 152
    const/4 v2, 0x0

    .line 154
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 155
    invoke-static {v2, p1, p2}, Lcom/amazon/mas/kiwi/util/BC1;->updateMessageDigestWithInputStream(Ljava/io/InputStream;Ljava/security/MessageDigest;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-static {v2}, Lcom/amazon/mas/kiwi/util/BC1;->closeIgnoreException(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2}, Lcom/amazon/mas/kiwi/util/BC1;->closeIgnoreException(Ljava/io/InputStream;)V

    throw v4

    .line 163
    .end local v1    # "entry":Ljava/util/jar/JarEntry;
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-static {v3}, Lcom/amazon/mas/kiwi/util/BC1;->closeIgnoreException(Ljava/util/zip/ZipFile;)V

    .line 164
    return-void
.end method

.method private static closeIgnoreException(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 167
    if-eqz p0, :cond_0

    .line 169
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static closeIgnoreException(Ljava/util/zip/ZipFile;)V
    .locals 1
    .param p0, "file"    # Ljava/util/zip/ZipFile;

    .prologue
    .line 176
    if-eqz p0, :cond_0

    .line 178
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getBC1Checksum(Ljava/io/File;)[B
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Lcom/amazon/mas/kiwi/util/BC1;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 98
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-static {p0}, Lcom/amazon/mas/kiwi/util/BC1;->isTooLargeForFullChecksum(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const/16 v1, 0x2800

    new-array v1, v1, [B

    invoke-static {p0, v0, v1}, Lcom/amazon/mas/kiwi/util/BC1;->calculatePartialChecksum(Ljava/io/File;Ljava/security/MessageDigest;[B)V

    .line 104
    :goto_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    .line 101
    :cond_0
    invoke-static {p0, v0}, Lcom/amazon/mas/kiwi/util/BC1;->calculateFullChecksum(Ljava/io/File;Ljava/security/MessageDigest;)V

    goto :goto_0
.end method

.method public static getBC1Checksum(Ljava/lang/String;)[B
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Given path is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot calculate checksum, file does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_1
    invoke-static {v0}, Lcom/amazon/mas/kiwi/util/BC1;->getBC1Checksum(Ljava/io/File;)[B

    move-result-object v1

    return-object v1
.end method

.method public static getBC1ChecksumBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-static {p0}, Lcom/amazon/mas/kiwi/util/BC1;->getBC1Checksum(Ljava/lang/String;)[B

    move-result-object v0

    .line 265
    .local v0, "raw":[B
    invoke-static {v0}, Lcom/amazon/mas/kiwi/util/BC1;->toBase64([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getMessageDigest()Ljava/security/MessageDigest;
    .locals 2

    .prologue
    .line 113
    :try_start_0
    sget-object v1, Lcom/amazon/mas/kiwi/util/BC1;->CHECKSUM_ALGORITHM:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 114
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 118
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static isInDirectoryToIgnore(Ljava/util/jar/JarEntry;)Z
    .locals 3
    .param p0, "entry"    # Ljava/util/jar/JarEntry;

    .prologue
    .line 191
    sget-object v2, Lcom/amazon/mas/kiwi/util/BC1;->DIRECTORIES_TO_IGNORE_FOR_PARTIAL_CHECKSUM:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    .local v1, "ignoreDir":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    const/4 v2, 0x1

    .line 202
    .end local v1    # "ignoreDir":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isTooLargeForFullChecksum(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 251
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x1400000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static toBase64([B)Ljava/lang/String;
    .locals 2
    .param p0, "raw"    # [B

    .prologue
    .line 273
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/amazon/mas/kiwi/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static updateMessageDigestWithInputStream(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "md"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    const/16 v1, 0x2800

    new-array v0, v1, [B

    .line 221
    .local v0, "byteArray":[B
    invoke-static {p0, p1, v0}, Lcom/amazon/mas/kiwi/util/BC1;->updateMessageDigestWithInputStream(Ljava/io/InputStream;Ljava/security/MessageDigest;[B)V

    .line 222
    return-void
.end method

.method private static updateMessageDigestWithInputStream(Ljava/io/InputStream;Ljava/security/MessageDigest;[B)V
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "md"    # Ljava/security/MessageDigest;
    .param p2, "byteArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 242
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 244
    :cond_0
    return-void
.end method
