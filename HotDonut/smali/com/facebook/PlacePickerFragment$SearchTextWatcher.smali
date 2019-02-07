.class Lcom/facebook/PlacePickerFragment$SearchTextWatcher;
.super Ljava/lang/Object;
.source "PlacePickerFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/PlacePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/PlacePickerFragment;


# direct methods
.method private constructor <init>(Lcom/facebook/PlacePickerFragment;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/facebook/PlacePickerFragment$SearchTextWatcher;->this$0:Lcom/facebook/PlacePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/PlacePickerFragment;Lcom/facebook/PlacePickerFragment$SearchTextWatcher;)V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/facebook/PlacePickerFragment$SearchTextWatcher;-><init>(Lcom/facebook/PlacePickerFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 486
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 477
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 481
    iget-object v0, p0, Lcom/facebook/PlacePickerFragment$SearchTextWatcher;->this$0:Lcom/facebook/PlacePickerFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/PlacePickerFragment;->setSearchTextAndReload(Ljava/lang/String;Z)V

    .line 482
    return-void
.end method
