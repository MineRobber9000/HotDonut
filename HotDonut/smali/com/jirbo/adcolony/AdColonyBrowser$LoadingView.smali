.class Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;
.super Landroid/view/View;
.source "AdColonyBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdColonyBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadingView"
.end annotation


# instance fields
.field bounds:Landroid/graphics/Rect;

.field stall_count:I

.field text_paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/jirbo/adcolony/AdColonyBrowser;


# direct methods
.method public constructor <init>(Lcom/jirbo/adcolony/AdColonyBrowser;Landroid/app/Activity;)V
    .locals 2
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    .line 120
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;->bounds:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;->text_paint:Landroid/graphics/Paint;

    .line 116
    const/16 v0, 0xa

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;->stall_count:I

    .line 121
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;->text_paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 122
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;->text_paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->page_loaded:Z

    if-nez v0, :cond_0

    .line 129
    const/16 v0, 0xff

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 130
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 131
    const-string v0, "Loading..."

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 132
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;->invalidate()V

    .line 134
    :cond_0
    return-void
.end method
