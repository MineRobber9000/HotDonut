.class public interface abstract Lcom/amazon/ags/client/whispersync/zip/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# virtual methods
.method public abstract unzip(Ljava/io/InputStream;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract unzip([BLjava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zipToByteArray(Ljava/io/File;Ljava/io/FilenameFilter;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
