.class Lcom/amazon/ags/overlay/AGSToast$2;
.super Ljava/lang/Object;
.source "AGSToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/overlay/AGSToast;->setupShowAnimationCallBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/overlay/AGSToast;


# direct methods
.method constructor <init>(Lcom/amazon/ags/overlay/AGSToast;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/amazon/ags/overlay/AGSToast$2;->this$0:Lcom/amazon/ags/overlay/AGSToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/amazon/ags/overlay/AGSToast$2;->this$0:Lcom/amazon/ags/overlay/AGSToast;

    invoke-virtual {v0}, Lcom/amazon/ags/overlay/AGSToast;->hide()V

    .line 205
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 210
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 215
    return-void
.end method
