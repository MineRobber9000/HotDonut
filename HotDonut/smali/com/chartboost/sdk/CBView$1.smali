.class Lcom/chartboost/sdk/CBView$1;
.super Ljava/lang/Object;
.source "CBView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/CBView;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/CBView$CBViewType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chartboost/sdk/CBView;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/CBView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/CBView$1;->this$0:Lcom/chartboost/sdk/CBView;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
