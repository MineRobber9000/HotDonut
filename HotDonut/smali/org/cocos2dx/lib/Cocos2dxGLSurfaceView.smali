.class public Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "Cocos2dxGLSurfaceView.java"


# static fields
.field private static final HANDLER_CLOSE_IME_KEYBOARD:I = 0x3

.field private static final HANDLER_OPEN_IME_KEYBOARD:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final debug:Z

.field private static handler:Landroid/os/Handler;

.field private static mainView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private static textInputWraper:Lorg/cocos2dx/lib/TextInputWraper;


# instance fields
.field private mRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;

.field private mTextField:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-class v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->TAG:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->initView()V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->initView()V

    .line 124
    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mTextField:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1()Lorg/cocos2dx/lib/TextInputWraper;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->textInputWraper:Lorg/cocos2dx/lib/TextInputWraper;

    return-object v0
.end method

.method static synthetic access$2()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mainView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    return-object v0
.end method

.method static synthetic access$3(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    return-object v0
.end method

.method public static closeIMEKeyboard()V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 225
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 226
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    return-void
.end method

.method private dumpEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    .line 362
    const/16 v5, 0xa

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "DOWN"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "UP"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "MOVE"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "CANCEL"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "OUTSIDE"

    aput-object v6, v3, v5

    .line 363
    const-string v5, "POINTER_DOWN"

    aput-object v5, v3, v7

    const-string v5, "POINTER_UP"

    aput-object v5, v3, v8

    const/4 v5, 0x7

    const-string v6, "7?"

    aput-object v6, v3, v5

    const/16 v5, 0x8

    const-string v6, "8?"

    aput-object v6, v3, v5

    const/16 v5, 0x9

    const-string v6, "9?"

    aput-object v6, v3, v5

    .line 364
    .local v3, "names":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 366
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    .line 367
    .local v1, "actionCode":I
    const-string v5, "event ACTION_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    if-eq v1, v7, :cond_0

    .line 369
    if-ne v1, v8, :cond_1

    .line 370
    :cond_0
    const-string v5, "(pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 371
    shr-int/lit8 v6, v0, 0x8

    .line 370
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_1
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 383
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    sget-object v5, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void

    .line 376
    :cond_2
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    const-string v5, "(pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 378
    const-string v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 381
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getContentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->getContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static openIMEKeyboard()V
    .locals 2

    .prologue
    .line 212
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 213
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 214
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mainView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getContentText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 215
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 217
    return-void
.end method


# virtual methods
.method public deleteBackward()V
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method public getTextField()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mTextField:Landroid/widget/TextView;

    return-object v0
.end method

.method protected initView()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-direct {v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setFocusableInTouchMode(Z)V

    .line 129
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 131
    new-instance v0, Lorg/cocos2dx/lib/TextInputWraper;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/TextInputWraper;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->textInputWraper:Lorg/cocos2dx/lib/TextInputWraper;

    .line 133
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->handler:Landroid/os/Handler;

    .line 162
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mainView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 163
    return-void
.end method

.method public insertText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 230
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$4;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 348
    move v0, p1

    .line 349
    .local v0, "kc":I
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 350
    :cond_0
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$12;

    invoke-direct {v1, p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$12;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;I)V

    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 356
    const/4 v1, 0x1

    .line 358
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 173
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 174
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 179
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$3;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    .line 254
    .local v12, "pointerNumber":I
    new-array v9, v12, [I

    .line 255
    .local v9, "ids":[I
    new-array v0, v12, [F

    move-object/from16 v17, v0

    .line 256
    .local v17, "xs":[F
    new-array v0, v12, [F

    move-object/from16 v22, v0

    .line 258
    .local v22, "ys":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v12, :cond_0

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 343
    :goto_1
    :pswitch_0
    const/16 v23, 0x1

    return v23

    .line 259
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    aput v23, v9, v4

    .line 260
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v23

    aput v23, v17, v4

    .line 261
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    aput v23, v22, v4

    .line 258
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 266
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    shr-int/lit8 v11, v23, 0x8

    .line 267
    .local v11, "indexPointerDown":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 268
    .local v6, "idPointerDown":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 269
    .local v14, "xPointerDown":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 271
    .local v19, "yPointerDown":F
    new-instance v23, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v6, v14, v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$6;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 281
    .end local v6    # "idPointerDown":I
    .end local v11    # "indexPointerDown":I
    .end local v14    # "xPointerDown":F
    .end local v19    # "yPointerDown":F
    :pswitch_2
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 282
    .local v5, "idDown":I
    const/16 v23, 0x0

    aget v13, v17, v23

    .line 283
    .local v13, "xDown":F
    const/16 v23, 0x0

    aget v18, v22, v23

    .line 285
    .local v18, "yDown":F
    new-instance v23, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$7;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v5, v13, v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$7;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 294
    .end local v5    # "idDown":I
    .end local v13    # "xDown":F
    .end local v18    # "yDown":F
    :pswitch_3
    new-instance v23, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;[I[F[F)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 303
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    shr-int/lit8 v10, v23, 0x8

    .line 304
    .local v10, "indexPointUp":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 305
    .local v7, "idPointerUp":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    .line 306
    .local v15, "xPointerUp":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    .line 308
    .local v20, "yPointerUp":F
    new-instance v23, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v7, v15, v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 318
    .end local v7    # "idPointerUp":I
    .end local v10    # "indexPointUp":I
    .end local v15    # "xPointerUp":F
    .end local v20    # "yPointerUp":F
    :pswitch_5
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 319
    .local v8, "idUp":I
    const/16 v23, 0x0

    aget v16, v17, v23

    .line 320
    .local v16, "xUp":F
    const/16 v23, 0x0

    aget v21, v22, v23

    .line 322
    .local v21, "yUp":F
    new-instance v23, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v16

    move/from16 v3, v21

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 331
    .end local v8    # "idUp":I
    .end local v16    # "xUp":F
    .end local v21    # "yUp":F
    :pswitch_6
    new-instance v23, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$11;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$11;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;[I[F[F)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public setTextField(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 201
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mTextField:Landroid/widget/TextView;

    .line 202
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mTextField:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->textInputWraper:Lorg/cocos2dx/lib/TextInputWraper;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mTextField:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 204
    .local v0, "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 205
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mTextField:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mTextField:Landroid/widget/TextView;

    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->textInputWraper:Lorg/cocos2dx/lib/TextInputWraper;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 207
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    .line 209
    .end local v0    # "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method
