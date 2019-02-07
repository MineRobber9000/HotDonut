.class public Lcom/jirbo/adcolony/URLSigner;
.super Ljava/lang/Object;
.source "URLSigner.java"


# static fields
.field private static base64_alphabet:Ljava/lang/String;

.field private static key:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sput-object v0, Lcom/jirbo/adcolony/URLSigner;->base64_alphabet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "request"    # Ljava/lang/String;
    .param p1, "key_string"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0xa

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    sput-object v11, Lcom/jirbo/adcolony/URLSigner;->key:[B

    .line 46
    :try_start_0
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v11, Lcom/jirbo/adcolony/URLSigner;->key:[B

    const-string v12, "HmacSHA1"

    invoke-direct {v9, v11, v12}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 49
    .local v9, "sha1_key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v11, "HmacSHA1"

    invoke-static {v11}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v7

    .line 50
    .local v7, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v7, v9}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v7, v11}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v10

    .line 55
    .local v10, "sig_bytes":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v11, v10

    mul-int/lit8 v11, v11, 0x2

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 56
    .local v2, "buffer":Ljava/lang/StringBuilder;
    move-object v0, v10

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-byte v1, v0, v4

    .line 58
    .local v1, "b":B
    shr-int/lit8 v11, v1, 0x4

    and-int/lit8 v5, v11, 0xf

    .line 59
    .local v5, "left":I
    and-int/lit8 v8, v1, 0xf

    .line 60
    .local v8, "right":I
    if-ge v5, v13, :cond_0

    add-int/lit8 v11, v5, 0x30

    int-to-char v11, v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    :goto_1
    if-ge v8, v13, :cond_1

    add-int/lit8 v11, v8, 0x30

    int-to-char v11, v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61
    :cond_0
    add-int/lit8 v11, v5, -0xa

    add-int/lit8 v11, v11, 0x61

    int-to-char v11, v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 68
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v2    # "buffer":Ljava/lang/StringBuilder;
    .end local v4    # "i$":I
    .end local v5    # "left":I
    .end local v6    # "len$":I
    .end local v7    # "mac":Ljavax/crypto/Mac;
    .end local v8    # "right":I
    .end local v9    # "sha1_key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v10    # "sig_bytes":[B
    :catch_0
    move-exception v3

    .line 70
    .local v3, "err":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error signing URL: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    .line 72
    const-string v11, ""

    .end local v3    # "err":Ljava/lang/Exception;
    :goto_3
    return-object v11

    .line 63
    .restart local v0    # "arr$":[B
    .restart local v1    # "b":B
    .restart local v2    # "buffer":Ljava/lang/StringBuilder;
    .restart local v4    # "i$":I
    .restart local v5    # "left":I
    .restart local v6    # "len$":I
    .restart local v7    # "mac":Ljavax/crypto/Mac;
    .restart local v8    # "right":I
    .restart local v9    # "sha1_key":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v10    # "sig_bytes":[B
    :cond_1
    add-int/lit8 v11, v8, -0xa

    add-int/lit8 v11, v11, 0x61

    int-to-char v11, v11

    :try_start_1
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 66
    .end local v1    # "b":B
    .end local v5    # "left":I
    .end local v8    # "right":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    goto :goto_3
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # Ljava/lang/String;
    .param p1, "key_string"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/jirbo/adcolony/URLSigner;->getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
