.class Lcom/jirbo/adcolony/NetworkStatus;
.super Ljava/lang/Object;
.source "NetworkStatus.java"


# static fields
.field public static url_encoding_map:Ljava/lang/String;

.field public static url_encoding_map_for_base64:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx x  x                      x x                            xxxx x                          xxx x"

    sput-object v0, Lcom/jirbo/adcolony/NetworkStatus;->url_encoding_map:Ljava/lang/String;

    .line 27
    const-string v0, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx x  x     x   x            xxx                            xxxx x                          xxx x"

    sput-object v0, Lcom/jirbo/adcolony/NetworkStatus;->url_encoding_map_for_base64:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isConnected()Z
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/jirbo/adcolony/NetworkStatus;->usingWiFiNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/NetworkStatus;->usingMobileNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/jirbo/adcolony/NetworkStatus;->usingWiFiNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wifi"

    .line 66
    :goto_0
    return-object v0

    .line 65
    :cond_0
    invoke-static {}, Lcom/jirbo/adcolony/NetworkStatus;->usingMobileNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cell"

    goto :goto_0

    .line 66
    :cond_1
    const-string v0, "offline"

    goto :goto_0
.end method

.method public static url_encoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xa

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 73
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 75
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 76
    .local v1, "ch":C
    const/16 v6, 0x80

    if-ge v1, v6, :cond_0

    sget-object v6, Lcom/jirbo/adcolony/NetworkStatus;->url_encoding_map:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_0

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_0
    const/16 v6, 0x25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    shr-int/lit8 v6, v1, 0x4

    and-int/lit8 v4, v6, 0xf

    .line 84
    .local v4, "left":I
    and-int/lit8 v5, v1, 0xf

    .line 85
    .local v5, "right":I
    if-ge v4, v8, :cond_1

    add-int/lit8 v6, v4, 0x30

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    :goto_2
    if-ge v5, v8, :cond_2

    add-int/lit8 v6, v5, 0x30

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 86
    :cond_1
    add-int/lit8 v6, v4, 0x41

    add-int/lit8 v6, v6, -0xa

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 88
    :cond_2
    add-int/lit8 v6, v5, 0x41

    add-int/lit8 v6, v6, -0xa

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 91
    .end local v1    # "ch":C
    .end local v4    # "left":I
    .end local v5    # "right":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static url_encoded_for_base64(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xa

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 98
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 100
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 101
    .local v1, "ch":C
    const/16 v6, 0x80

    if-ge v1, v6, :cond_0

    sget-object v6, Lcom/jirbo/adcolony/NetworkStatus;->url_encoding_map_for_base64:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_0

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_0
    const/16 v6, 0x25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    shr-int/lit8 v6, v1, 0x4

    and-int/lit8 v4, v6, 0xf

    .line 109
    .local v4, "left":I
    and-int/lit8 v5, v1, 0xf

    .line 110
    .local v5, "right":I
    if-ge v4, v8, :cond_1

    add-int/lit8 v6, v4, 0x30

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    :goto_2
    if-ge v5, v8, :cond_2

    add-int/lit8 v6, v5, 0x30

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 111
    :cond_1
    add-int/lit8 v6, v4, 0x41

    add-int/lit8 v6, v6, -0xa

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 113
    :cond_2
    add-int/lit8 v6, v5, 0x41

    add-int/lit8 v6, v6, -0xa

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 116
    .end local v1    # "ch":C
    .end local v4    # "left":I
    .end local v5    # "right":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static usingMobileNetwork()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 50
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 51
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v3

    .line 53
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 54
    .local v2, "type":I
    if-eqz v2, :cond_2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static usingWiFiNetwork()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 41
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 42
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 43
    :goto_0
    return v3

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method
