.class Lcom/facebook/ProfilePictureView$1;
.super Ljava/lang/Object;
.source "ProfilePictureView.java"

# interfaces
.implements Lcom/facebook/ImageRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ProfilePictureView;->sendImageRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ProfilePictureView;


# direct methods
.method constructor <init>(Lcom/facebook/ProfilePictureView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/ProfilePictureView$1;->this$0:Lcom/facebook/ProfilePictureView;

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/ImageResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/facebook/ImageResponse;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/facebook/ProfilePictureView$1;->this$0:Lcom/facebook/ProfilePictureView;

    invoke-static {v0, p1}, Lcom/facebook/ProfilePictureView;->access$0(Lcom/facebook/ProfilePictureView;Lcom/facebook/ImageResponse;)V

    .line 399
    return-void
.end method
