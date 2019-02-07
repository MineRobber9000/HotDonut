.class Lcom/jirbo/adcolony/Dir;
.super Ljava/lang/Object;
.source "AdManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 3
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 1301
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1303
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1304
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1306
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1308
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/jirbo/adcolony/Dir;->delete(Ljava/io/File;)Z

    .line 1304
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1312
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1316
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    return v2
.end method
