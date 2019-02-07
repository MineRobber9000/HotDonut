.class public Lorg/cocos2dx/lib/Cocos2dxBitmap;
.super Ljava/lang/Object;
.source "Cocos2dxBitmap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
    }
.end annotation


# static fields
.field private static final ALIGNCENTER:I = 0x33

.field private static final ALIGNLEFT:I = 0x31

.field private static final ALIGNRIGHT:I = 0x32

.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeTextProperty(Ljava/lang/String;Landroid/graphics/Paint;II)Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
    .locals 11
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    const/4 v7, 0x0

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 109
    .local v0, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v6, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v6, v8

    int-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    .line 110
    .local v1, "h":I
    const/4 v4, 0x0

    .line 112
    .local v4, "maxContentWidth":I
    invoke-static {p0, p3, p2, p1}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->splitString(Ljava/lang/String;IILandroid/graphics/Paint;)[Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "lines":[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 115
    move v4, p2

    .line 130
    :cond_0
    new-instance v6, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;

    invoke-direct {v6, v4, v1, v3}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;-><init>(II[Ljava/lang/String;)V

    return-object v6

    .line 121
    :cond_1
    const/4 v5, 0x0

    .line 122
    .local v5, "temp":I
    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v2, v3, v6

    .line 123
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v2, v7, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v5, v9

    .line 124
    if-le v5, v4, :cond_2

    .line 125
    move v4, v5

    .line 122
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private static computeX(Landroid/graphics/Paint;Ljava/lang/String;II)I
    .locals 1
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "alignment"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "ret":I
    packed-switch p3, :pswitch_data_0

    .line 87
    :goto_0
    :pswitch_0
    return v0

    .line 68
    :pswitch_1
    div-int/lit8 v0, p2, 0x2

    .line 69
    goto :goto_0

    .line 76
    :pswitch_2
    move v0, p2

    .line 77
    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static createTextBitmap(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 15
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontSize"    # I
    .param p3, "alignment"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 39
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->refactorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static/range {p1 .. p3}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v7

    .line 42
    .local v7, "paint":Landroid/graphics/Paint;
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {p0, v7, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeTextProperty(Ljava/lang/String;Landroid/graphics/Paint;II)Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;

    move-result-object v8

    .line 45
    .local v8, "textProperty":Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
    iget v11, v8, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->maxWidth:I

    .line 46
    iget v12, v8, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->totalHeight:I

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 45
    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 47
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 50
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    .line 51
    .local v4, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/4 v9, 0x0

    .line 52
    .local v9, "x":I
    iget v11, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v10, v11

    .line 53
    .local v10, "y":I
    iget-object v6, v8, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->lines:[Ljava/lang/String;

    .line 54
    .local v6, "lines":[Ljava/lang/String;
    array-length v12, v6

    const/4 v11, 0x0

    :goto_0
    if-lt v11, v12, :cond_0

    .line 60
    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->initNativeObject(Landroid/graphics/Bitmap;)V

    .line 61
    return-void

    .line 54
    :cond_0
    aget-object v5, v6, v11

    .line 55
    .local v5, "line":Ljava/lang/String;
    iget v13, v8, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->maxWidth:I

    move/from16 v0, p3

    invoke-static {v7, v5, v13, v0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeX(Landroid/graphics/Paint;Ljava/lang/String;II)I

    move-result v9

    .line 56
    int-to-float v13, v9

    int-to-float v14, v10

    invoke-virtual {v3, v5, v13, v14, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 57
    iget v13, v8, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->heightPerLine:I

    add-int/2addr v10, v13

    .line 54
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method private static divideStringWithMaxWidth(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/util/LinkedList;
    .locals 8
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 201
    .local v0, "charLength":I
    const/4 v3, 0x0

    .line 202
    .local v3, "start":I
    const/4 v5, 0x0

    .line 203
    .local v5, "tempWidth":I
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 208
    .local v4, "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 243
    if-ge v3, v0, :cond_0

    .line 244
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_0
    return-object v4

    .line 209
    :cond_1
    invoke-virtual {p0, p1, v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 210
    if-lt v5, p2, :cond_2

    .line 211
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 213
    .local v2, "lastIndexOfSpace":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    .line 217
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 218
    move v1, v2

    .line 236
    :goto_1
    move v3, v1

    .line 208
    .end local v2    # "lastIndexOfSpace":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .restart local v2    # "lastIndexOfSpace":I
    :cond_3
    if-le v5, p2, :cond_4

    .line 225
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 232
    :cond_4
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static getPixels(Landroid/graphics/Bitmap;)[B
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 342
    if-eqz p0, :cond_0

    .line 343
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    .line 344
    .local v1, "pixels":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 345
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 346
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 350
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "pixels":[B
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static initNativeObject(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 333
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->getPixels(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 334
    .local v0, "pixels":[B
    if-nez v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2, v0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->nativeInitBitmapDC(II[B)V

    goto :goto_0
.end method

.method private static native nativeInitBitmapDC(II[B)V
.end method

.method private static newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;
    .locals 7
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "fontSize"    # I
    .param p2, "alignment"    # I

    .prologue
    const/4 v6, 0x0

    .line 251
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 252
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    int-to-float v3, p1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 254
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 259
    const-string v3, ".ttf"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    :try_start_0
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxBitmap;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static {v3, p0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 262
    .local v2, "typeFace":Landroid/graphics/Typeface;
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v2    # "typeFace":Landroid/graphics/Typeface;
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 291
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 295
    :goto_1
    return-object v1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Cocos2dxBitmap"

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error to create ttf type face: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 264
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {p0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {p0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 279
    :pswitch_0
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    .line 283
    :pswitch_1
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    .line 287
    :pswitch_2
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static refactorString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 300
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 301
    const-string v3, " "

    .line 329
    :goto_0
    return-object v3

    .line 311
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .local v2, "strBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 313
    .local v1, "start":I
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 314
    .local v0, "index":I
    :goto_1
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 329
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 315
    :cond_2
    if-eqz v0, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    .line 316
    :cond_3
    const-string v3, " "

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    add-int/lit8 v1, v0, 0x2

    .line 322
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gt v1, v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 326
    const-string v3, "\n"

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 319
    :cond_4
    add-int/lit8 v1, v0, 0x1

    goto :goto_2
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxBitmap;->context:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private static splitString(Ljava/lang/String;IILandroid/graphics/Paint;)[Ljava/lang/String;
    .locals 15
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "maxHeight"    # I
    .param p2, "maxWidth"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 139
    const-string v11, "\\n"

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, "lines":[Ljava/lang/String;
    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/String;

    .line 141
    .local v9, "ret":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 142
    .local v2, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v11, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v12, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 143
    .local v3, "heightPerLine":I
    div-int v8, p1, v3

    .line 145
    .local v8, "maxLines":I
    if-eqz p2, :cond_6

    .line 146
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 147
    .local v10, "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    array-length v12, v7

    const/4 v11, 0x0

    :goto_0
    if-lt v11, v12, :cond_2

    .line 171
    :cond_0
    if-lez v8, :cond_1

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-le v11, v8, :cond_1

    .line 172
    :goto_1
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-gt v11, v8, :cond_5

    .line 177
    :cond_1
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v11

    new-array v9, v11, [Ljava/lang/String;

    .line 178
    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 195
    .end local v10    # "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_2
    return-object v9

    .line 147
    .restart local v10    # "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_2
    aget-object v5, v7, v11

    .line 152
    .local v5, "line":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v6, v13

    .line 153
    .local v6, "lineWidth":I
    move/from16 v0, p2

    if-le v6, v0, :cond_4

    .line 154
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v5, v1}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->divideStringWithMaxWidth(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/util/LinkedList;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 163
    :goto_3
    if-lez v8, :cond_3

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v13

    if-ge v13, v8, :cond_0

    .line 147
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 157
    :cond_4
    invoke-virtual {v10, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 173
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "lineWidth":I
    :cond_5
    invoke-virtual {v10}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_1

    .line 180
    .end local v10    # "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_6
    if-eqz p1, :cond_8

    array-length v11, v7

    if-le v11, v8, :cond_8

    .line 184
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 185
    .restart local v10    # "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-lt v4, v8, :cond_7

    .line 188
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v11

    new-array v9, v11, [Ljava/lang/String;

    .line 189
    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_2

    .line 186
    :cond_7
    aget-object v11, v7, v4

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 192
    .end local v4    # "i":I
    .end local v10    # "strList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_8
    move-object v9, v7

    goto :goto_2
.end method
