.class Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$1;
.super Landroid/os/Handler;
.source "Cocos2dxGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 133
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 135
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$0(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$0(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$0(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$1()Lorg/cocos2dx/lib/TextInputWraper;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$0(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 141
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$0(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 142
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$1()Lorg/cocos2dx/lib/TextInputWraper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/cocos2dx/lib/TextInputWraper;->setOriginText(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$0(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$1()Lorg/cocos2dx/lib/TextInputWraper;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$2()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 145
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$0(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 146
    const-string v2, "GLSurfaceView"

    const-string v3, "showSoftInput"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$0(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$0(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$1()Lorg/cocos2dx/lib/TextInputWraper;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$2()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 154
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$0(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 155
    const-string v2, "GLSurfaceView"

    const-string v3, "HideSoftInput"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
