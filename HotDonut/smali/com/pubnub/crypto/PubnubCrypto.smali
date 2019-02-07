.class public Lcom/pubnub/crypto/PubnubCrypto;
.super Ljava/lang/Object;
.source "PubnubCrypto.java"


# static fields
.field public static blockSize:I


# instance fields
.field CIPHER_KEY:Ljava/lang/String;

.field IV:[B

.field buf:[B

.field decryptCipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

.field encryptCipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

.field key:[B

.field obuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x10

    sput v0, Lcom/pubnub/crypto/PubnubCrypto;->blockSize:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "CIPHER_KEY"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/pubnub/crypto/PubnubCrypto;->encryptCipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 35
    iput-object v1, p0, Lcom/pubnub/crypto/PubnubCrypto;->decryptCipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 36
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pubnub/crypto/PubnubCrypto;->buf:[B

    .line 37
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pubnub/crypto/PubnubCrypto;->obuf:[B

    .line 38
    iput-object v1, p0, Lcom/pubnub/crypto/PubnubCrypto;->key:[B

    .line 39
    iput-object v1, p0, Lcom/pubnub/crypto/PubnubCrypto;->IV:[B

    .line 44
    iput-object p1, p0, Lcom/pubnub/crypto/PubnubCrypto;->CIPHER_KEY:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static getHMacSHA256(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "secret_key"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v6, "0"

    .line 154
    .local v6, "signature":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v7, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v7}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v3, v7}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 155
    .local v3, "m":Lorg/bouncycastle/crypto/macs/HMac;
    new-instance v7, Lorg/bouncycastle/crypto/params/KeyParameter;

    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 156
    const-string v7, "UTF-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 157
    .local v0, "bytes":[B
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v3, v0, v7, v8}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    .line 158
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v7

    new-array v4, v7, [B

    .line 159
    .local v4, "mac":[B
    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 160
    new-instance v5, Lorg/bouncycastle/util/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v5, v7, v4}, Lorg/bouncycastle/util/BigInteger;-><init>(I[B)V

    .line 161
    .local v5, "number":Lorg/bouncycastle/util/BigInteger;
    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Lorg/bouncycastle/util/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 162
    .local v2, "hashtext":Ljava/lang/String;
    move-object v6, v2

    .line 169
    .end local v0    # "bytes":[B
    .end local v2    # "hashtext":Ljava/lang/String;
    .end local v3    # "m":Lorg/bouncycastle/crypto/macs/HMac;
    .end local v4    # "mac":[B
    .end local v5    # "number":Lorg/bouncycastle/util/BigInteger;
    :goto_0
    return-object v6

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 165
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 135
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 136
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 137
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 136
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 140
    :cond_0
    return-object v0
.end method

.method public static md5(Ljava/lang/String;)[B
    .locals 8
    .param p0, "myString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 178
    new-instance v2, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    .line 179
    .local v2, "digest":Lorg/bouncycastle/crypto/digests/MD5Digest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 180
    .local v1, "bytes":[B
    array-length v6, v1

    invoke-virtual {v2, v1, v7, v6}, Lorg/bouncycastle/crypto/digests/MD5Digest;->update([BII)V

    .line 181
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->getDigestSize()I

    move-result v6

    new-array v5, v6, [B

    .line 182
    .local v5, "md5":[B
    invoke-virtual {v2, v5, v7}, Lorg/bouncycastle/crypto/digests/MD5Digest;->doFinal([BI)I

    .line 183
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v6, v5

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 184
    .local v3, "hex":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 185
    aget-byte v0, v5, v4

    .line 186
    .local v0, "b":B
    and-int/lit16 v6, v0, 0xff

    const/16 v7, 0x10

    if-ge v6, v7, :cond_0

    .line 187
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    :cond_0
    and-int/lit16 v6, v0, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "b":B
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pubnub/crypto/PubnubCrypto;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    return-object v6
.end method

.method public static sha256([B)[B
    .locals 5
    .param p0, "input"    # [B

    .prologue
    const/4 v4, 0x0

    .line 201
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    .line 202
    .local v1, "digest":Lorg/bouncycastle/crypto/Digest;
    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 203
    .local v2, "resBuf":[B
    move-object v0, p0

    .line 204
    .local v0, "bytes":[B
    array-length v3, v0

    invoke-interface {v1, v0, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 205
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 206
    return-object v2
.end method


# virtual methods
.method public CBCEncryptOrDecrypt(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v1, p0, Lcom/pubnub/crypto/PubnubCrypto;->encryptCipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pubnub/crypto/PubnubCrypto;->decryptCipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    if-nez v1, :cond_1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/pubnub/crypto/PubnubCrypto;->InitCiphers()V

    .line 116
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/pubnub/crypto/PubnubCrypto;->encryptCipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 117
    .local v0, "cipher":Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;
    :goto_0
    const/4 v3, 0x0

    .line 118
    .local v3, "noBytesRead":I
    const/4 v6, 0x0

    .line 120
    .local v6, "noBytesProcessed":I
    :goto_1
    iget-object v1, p0, Lcom/pubnub/crypto/PubnubCrypto;->buf:[B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_3

    .line 121
    iget-object v1, p0, Lcom/pubnub/crypto/PubnubCrypto;->buf:[B

    iget-object v4, p0, Lcom/pubnub/crypto/PubnubCrypto;->obuf:[B

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->processBytes([BII[BI)I

    move-result v6

    .line 123
    iget-object v1, p0, Lcom/pubnub/crypto/PubnubCrypto;->obuf:[B

    invoke-virtual {p2, v1, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 116
    .end local v0    # "cipher":Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;
    .end local v3    # "noBytesRead":I
    .end local v6    # "noBytesProcessed":I
    :cond_2
    iget-object v0, p0, Lcom/pubnub/crypto/PubnubCrypto;->decryptCipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    goto :goto_0

    .line 126
    .restart local v0    # "cipher":Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;
    .restart local v3    # "noBytesRead":I
    .restart local v6    # "noBytesProcessed":I
    :cond_3
    iget-object v1, p0, Lcom/pubnub/crypto/PubnubCrypto;->obuf:[B

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->doFinal([BI)I

    move-result v6

    .line 127
    iget-object v1, p0, Lcom/pubnub/crypto/PubnubCrypto;->obuf:[B

    invoke-virtual {p2, v1, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 128
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 129
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 130
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 131
    return-void
.end method

.method public InitCiphers()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 49
    iget-object v1, p0, Lcom/pubnub/crypto/PubnubCrypto;->CIPHER_KEY:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/pubnub/crypto/PubnubCrypto;->sha256([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/pubnub/crypto/PubnubCrypto;->key:[B

    .line 51
    const-string v1, "0123456789012345"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/pubnub/crypto/PubnubCrypto;->IV:[B

    .line 53
    new-instance v1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v3, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/pubnub/crypto/PubnubCrypto;->encryptCipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 56
    new-instance v1, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v2, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v3, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lcom/pubnub/crypto/PubnubCrypto;->decryptCipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 60
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lcom/pubnub/crypto/PubnubCrypto;->key:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object v2, p0, Lcom/pubnub/crypto/PubnubCrypto;->IV:[B

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 63
    .local v0, "parameterIV":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    iget-object v1, p0, Lcom/pubnub/crypto/PubnubCrypto;->encryptCipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 64
    iget-object v1, p0, Lcom/pubnub/crypto/PubnubCrypto;->decryptCipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-virtual {v1, v4, v0}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 65
    return-void
.end method

.method public ResetCiphers()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pubnub/crypto/PubnubCrypto;->encryptCipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/pubnub/crypto/PubnubCrypto;->encryptCipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/pubnub/crypto/PubnubCrypto;->decryptCipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/pubnub/crypto/PubnubCrypto;->decryptCipher:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 74
    :cond_1
    return-void
.end method

.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cipher_text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p1}, Lcom/pubnub/crypto/Base64Encoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 102
    .local v0, "cipher":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 103
    .local v2, "st":Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    .local v1, "ou":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/pubnub/crypto/PubnubCrypto;->CBCEncryptOrDecrypt(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 106
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 80
    .local v3, "st":Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    .local v1, "ou":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v1, v4}, Lcom/pubnub/crypto/PubnubCrypto;->CBCEncryptOrDecrypt(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 82
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/pubnub/crypto/Base64Encoder;->encode([B)[C

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "ou":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "st":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    const-string v2, "NULL"

    goto :goto_0
.end method
