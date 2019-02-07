.class public Lcom/amazon/mas/kiwi/util/KiwiVersionEncrypter;
.super Ljava/lang/Object;
.source "KiwiVersionEncrypter.java"


# static fields
.field private static final SECRET_KEY:Ljava/lang/String; = "Kiwi__Version__Obfuscator"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private static checkInput(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "inputName"    # Ljava/lang/String;

    .prologue
    .line 112
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' cannot be null or empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const-string v0, "text"

    invoke-static {p0, v0}, Lcom/amazon/mas/kiwi/util/KiwiVersionEncrypter;->checkInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/mas/kiwi/util/Base64;->decode([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/mas/kiwi/util/KiwiVersionEncrypter;->performXOR([B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static decryptFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const-string v3, "file"

    invoke-static {p0, v3}, Lcom/amazon/mas/kiwi/util/KiwiVersionEncrypter;->checkInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v2, ""

    .line 87
    .local v2, "encrypted":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 90
    if-eqz v1, :cond_0

    .line 92
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/mas/kiwi/util/Base64;->decode([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/mas/kiwi/util/KiwiVersionEncrypter;->performXOR([B)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3

    .line 90
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v0, :cond_1

    .line 92
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 94
    :cond_1
    :goto_2
    throw v3

    .line 93
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 90
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "text"

    invoke-static {p0, v0}, Lcom/amazon/mas/kiwi/util/KiwiVersionEncrypter;->checkInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/mas/kiwi/util/KiwiVersionEncrypter;->performXOR([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/mas/kiwi/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    const-string v3, "text"

    invoke-static {p0, v3}, Lcom/amazon/mas/kiwi/util/KiwiVersionEncrypter;->checkInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v3, "file"

    invoke-static {p1, v3}, Lcom/amazon/mas/kiwi/util/KiwiVersionEncrypter;->checkInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/mas/kiwi/util/KiwiVersionEncrypter;->performXOR([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/mas/kiwi/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "encrypted":Ljava/lang/String;
    const/4 v0, 0x0

    .line 52
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    if-eqz v1, :cond_0

    .line 58
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 56
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v0, :cond_1

    .line 58
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 60
    :cond_1
    :goto_2
    throw v3

    .line 59
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 56
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: com.amazon.mas.kiwi.util.KiwiVersionEncrypter <textToBeEncrypted> [<encryptToFileName>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 154
    :cond_1
    array-length v0, p0

    if-le v0, v2, :cond_2

    .line 155
    aget-object v0, p0, v1

    aget-object v1, p0, v2

    invoke-static {v0, v1}, Lcom/amazon/mas/kiwi/util/KiwiVersionEncrypter;->encryptToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v1, p0, v1

    invoke-static {v1}, Lcom/amazon/mas/kiwi/util/KiwiVersionEncrypter;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static performXOR([B)[B
    .locals 6
    .param p0, "input"    # [B

    .prologue
    .line 124
    array-length v4, p0

    new-array v0, v4, [B

    .line 125
    .local v0, "output":[B
    const-string v4, "Kiwi__Version__Obfuscator"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 126
    .local v2, "secret":[B
    const/4 v3, 0x0

    .line 127
    .local v3, "spos":I
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 128
    aget-byte v4, p0, v1

    aget-byte v5, v2, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 129
    add-int/lit8 v3, v3, 0x1

    .line 130
    array-length v4, v2

    if-lt v3, v4, :cond_0

    .line 131
    const/4 v3, 0x0

    .line 127
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_1
    return-object v0
.end method
