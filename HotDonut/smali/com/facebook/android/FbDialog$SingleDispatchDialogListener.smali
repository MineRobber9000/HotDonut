.class Lcom/facebook/android/FbDialog$SingleDispatchDialogListener;
.super Ljava/lang/Object;
.source "FbDialog.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/android/FbDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleDispatchDialogListener"
.end annotation


# instance fields
.field private allowDispatch:Z

.field private final wrapped:Lcom/facebook/android/Facebook$DialogListener;


# direct methods
.method public constructor <init>(Lcom/facebook/android/Facebook$DialogListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/android/Facebook$DialogListener;

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/facebook/android/FbDialog$SingleDispatchDialogListener;->wrapped:Lcom/facebook/android/Facebook$DialogListener;

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/android/FbDialog$SingleDispatchDialogListener;->allowDispatch:Z

    .line 248
    return-void
.end method

.method private checkAndSetDispatch(Z)Z
    .locals 1
    .param p1, "finalValue"    # Z

    .prologue
    .line 279
    iget-object v0, p0, Lcom/facebook/android/FbDialog$SingleDispatchDialogListener;->wrapped:Lcom/facebook/android/Facebook$DialogListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/android/FbDialog$SingleDispatchDialogListener;->allowDispatch:Z

    if-eqz v0, :cond_0

    .line 280
    iput-boolean p1, p0, Lcom/facebook/android/FbDialog$SingleDispatchDialogListener;->allowDispatch:Z

    .line 281
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/android/FbDialog$SingleDispatchDialogListener;->checkAndSetDispatch(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/facebook/android/FbDialog$SingleDispatchDialogListener;->wrapped:Lcom/facebook/android/Facebook$DialogListener;

    invoke-interface {v0}, Lcom/facebook/android/Facebook$DialogListener;->onCancel()V

    .line 276
    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/android/FbDialog$SingleDispatchDialogListener;->checkAndSetDispatch(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/facebook/android/FbDialog$SingleDispatchDialogListener;->wrapped:Lcom/facebook/android/Facebook$DialogListener;

    invoke-interface {v0, p1}, Lcom/facebook/android/Facebook$DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 255
    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 1
    .param p1, "e"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/android/FbDialog$SingleDispatchDialogListener;->checkAndSetDispatch(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/facebook/android/FbDialog$SingleDispatchDialogListener;->wrapped:Lcom/facebook/android/Facebook$DialogListener;

    invoke-interface {v0, p1}, Lcom/facebook/android/Facebook$DialogListener;->onError(Lcom/facebook/android/DialogError;)V

    .line 269
    :cond_0
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 1
    .param p1, "e"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/android/FbDialog$SingleDispatchDialogListener;->checkAndSetDispatch(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/facebook/android/FbDialog$SingleDispatchDialogListener;->wrapped:Lcom/facebook/android/Facebook$DialogListener;

    invoke-interface {v0, p1}, Lcom/facebook/android/Facebook$DialogListener;->onFacebookError(Lcom/facebook/android/FacebookError;)V

    .line 262
    :cond_0
    return-void
.end method
