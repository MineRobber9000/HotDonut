.class public Lcom/jirbo/adcolony/AdColonyImage;
.super Ljava/lang/Object;
.source "AdColonyImage.java"


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field dest_rect:Landroid/graphics/Rect;

.field height:I

.field paint:Landroid/graphics/Paint;

.field src_rect:Landroid/graphics/Rect;

.field width:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 27
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Lcom/jirbo/adcolony/AdColonyImage;-><init>(Ljava/lang/String;D)V

    .line 28
    return-void
.end method

.method constructor <init>(Ljava/lang/String;D)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "scale"    # D

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyImage;->paint:Landroid/graphics/Paint;

    .line 21
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyImage;->src_rect:Landroid/graphics/Rect;

    .line 22
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyImage;->dest_rect:Landroid/graphics/Rect;

    .line 40
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, "infile":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 43
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 44
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 46
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyImage;->bitmap:Landroid/graphics/Bitmap;

    .line 48
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/jirbo/adcolony/AdColonyImage;->width:I

    .line 49
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/jirbo/adcolony/AdColonyImage;->height:I

    .line 51
    invoke-virtual {p0, p2, p3}, Lcom/jirbo/adcolony/AdColonyImage;->resize(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0    # "bytes":[B
    .end local v2    # "infile":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 55
    .local v1, "err":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load image "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 32
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Lcom/jirbo/adcolony/AdColonyImage;-><init>(Ljava/lang/String;D)V

    .line 33
    invoke-virtual {p0, p2, p3}, Lcom/jirbo/adcolony/AdColonyImage;->resize(II)V

    .line 34
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;II)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->dest_rect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 90
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->dest_rect:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 91
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->dest_rect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyImage;->width:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 92
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->dest_rect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyImage;->height:I

    add-int/2addr v1, p3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 93
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyImage;->src_rect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyImage;->dest_rect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyImage;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method resize(D)V
    .locals 4
    .param p1, "scale"    # D

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 74
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_1

    .line 76
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->width:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->width:I

    .line 77
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->height:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->height:I

    .line 78
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->bitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyImage;->width:I

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyImage;->height:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->bitmap:Landroid/graphics/Bitmap;

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->src_rect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyImage;->width:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 82
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->src_rect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyImage;->height:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method resize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->bitmap:Landroid/graphics/Bitmap;

    .line 64
    iput p1, p0, Lcom/jirbo/adcolony/AdColonyImage;->width:I

    .line 65
    iput p2, p0, Lcom/jirbo/adcolony/AdColonyImage;->height:I

    .line 66
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->src_rect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 67
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyImage;->src_rect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method
