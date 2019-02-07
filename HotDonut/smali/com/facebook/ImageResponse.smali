.class Lcom/facebook/ImageResponse;
.super Ljava/lang/Object;
.source "ImageResponse.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private error:Ljava/lang/Exception;

.field private isCachedRedirect:Z

.field private request:Lcom/facebook/ImageRequest;


# direct methods
.method constructor <init>(Lcom/facebook/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "request"    # Lcom/facebook/ImageRequest;
    .param p2, "error"    # Ljava/lang/Exception;
    .param p3, "isCachedRedirect"    # Z
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/facebook/ImageResponse;->request:Lcom/facebook/ImageRequest;

    .line 14
    iput-object p2, p0, Lcom/facebook/ImageResponse;->error:Ljava/lang/Exception;

    .line 15
    iput-object p4, p0, Lcom/facebook/ImageResponse;->bitmap:Landroid/graphics/Bitmap;

    .line 16
    iput-boolean p3, p0, Lcom/facebook/ImageResponse;->isCachedRedirect:Z

    .line 17
    return-void
.end method


# virtual methods
.method getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/ImageResponse;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getError()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/ImageResponse;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method getRequest()Lcom/facebook/ImageRequest;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/ImageResponse;->request:Lcom/facebook/ImageRequest;

    return-object v0
.end method

.method isCachedRedirect()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/facebook/ImageResponse;->isCachedRedirect:Z

    return v0
.end method
