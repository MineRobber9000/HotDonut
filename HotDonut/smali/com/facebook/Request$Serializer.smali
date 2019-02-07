.class Lcom/facebook/Request$Serializer;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/facebook/Request$KeyValueSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Serializer"
.end annotation


# instance fields
.field private firstWrite:Z

.field private final logger:Lcom/facebook/Logger;

.field private final outputStream:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/BufferedOutputStream;Lcom/facebook/Logger;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/BufferedOutputStream;
    .param p2, "logger"    # Lcom/facebook/Logger;

    .prologue
    .line 1565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/Request$Serializer;->firstWrite:Z

    .line 1566
    iput-object p1, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    .line 1567
    iput-object p2, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/Logger;

    .line 1568
    return-void
.end method

.method public static isSupportedAttachmentType(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 1672
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportedParameterType(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 1676
    instance-of v0, p0, Ljava/lang/String;

    return v0
.end method


# virtual methods
.method public varargs write(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1656
    iget-boolean v0, p0, Lcom/facebook/Request$Serializer;->firstWrite:Z

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    const-string v1, "--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1659
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    const-string v1, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1660
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/Request$Serializer;->firstWrite:Z

    .line 1663
    :cond_0
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1664
    return-void
.end method

.method public writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1594
    const-string v0, "image/png"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1597
    const-string v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1598
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    .line 1599
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<Image>"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1600
    return-void
.end method

.method public writeBytes(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1603
    const-string v0, "content/unknown"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1605
    const-string v0, ""

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1606
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    .line 1607
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<Data: %d>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1608
    return-void
.end method

.method public writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1644
    const-string v0, "Content-Disposition: form-data; name=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1645
    if-eqz p2, :cond_0

    .line 1646
    const-string v0, "; filename=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1648
    :cond_0
    const-string v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1649
    if-eqz p3, :cond_1

    .line 1650
    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Content-Type"

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1652
    :cond_1
    const-string v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1653
    return-void
.end method

.method public writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 13
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "descriptor"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1611
    const-string v7, "content/unknown"

    invoke-virtual {p0, p1, p1, v7}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    const/4 v4, 0x0

    .line 1614
    .local v4, "inputStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    const/4 v1, 0x0

    .line 1615
    .local v1, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 1617
    .local v6, "totalBytes":I
    :try_start_0
    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v5, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1618
    .end local v4    # "inputStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .local v5, "inputStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1620
    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/16 v7, 0x2000

    :try_start_2
    new-array v0, v7, [B

    .line 1622
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    .local v3, "bytesRead":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_2

    .line 1627
    if-eqz v2, :cond_0

    .line 1628
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 1630
    :cond_0
    if-eqz v5, :cond_1

    .line 1631
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    .line 1634
    :cond_1
    const-string v7, ""

    new-array v8, v12, [Ljava/lang/Object;

    invoke-virtual {p0, v7, v8}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1635
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    .line 1636
    iget-object v7, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "    "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "<Data: %d>"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/facebook/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1637
    return-void

    .line 1623
    :cond_2
    :try_start_3
    iget-object v7, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/BufferedOutputStream;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1624
    add-int/2addr v6, v3

    goto :goto_0

    .line 1626
    .end local v0    # "buffer":[B
    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v3    # "bytesRead":I
    .end local v5    # "inputStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "inputStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :catchall_0
    move-exception v7

    .line 1627
    :goto_1
    if-eqz v1, :cond_3

    .line 1628
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1630
    :cond_3
    if-eqz v4, :cond_4

    .line 1631
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    .line 1633
    :cond_4
    throw v7

    .line 1626
    .end local v4    # "inputStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .restart local v5    # "inputStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "inputStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .restart local v4    # "inputStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    goto :goto_1

    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v4    # "inputStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "inputStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5    # "inputStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .restart local v4    # "inputStream":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    goto :goto_1
.end method

.method public varargs writeLine(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1667
    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1668
    const-string v0, "\r\n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1669
    return-void
.end method

.method public writeObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1571
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1572
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    :goto_0
    return-void

    .line 1573
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1574
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1575
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, [B

    if-eqz v0, :cond_2

    .line 1576
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeBytes(Ljava/lang/String;[B)V

    goto :goto_0

    .line 1577
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    .line 1578
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .line 1580
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a supported type: String, Bitmap, byte[]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeRecordBoundary()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1640
    const-string v0, "--%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1641
    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1585
    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1587
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    .line 1588
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/Logger;

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1591
    :cond_0
    return-void
.end method
