.class Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy$1;
.super Ljava/lang/Object;
.source "PlacePickerFragment.java"

# interfaces
.implements Lcom/facebook/GraphObjectAdapter$DataNeededListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;->attach(Lcom/facebook/GraphObjectAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/GraphObjectAdapter$DataNeededListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;


# direct methods
.method constructor <init>(Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy$1;->this$1:Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataNeeded()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy$1;->this$1:Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;

    iget-object v0, v0, Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;->loader:Lcom/facebook/GraphObjectPagingLoader;

    invoke-virtual {v0}, Lcom/facebook/GraphObjectPagingLoader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy$1;->this$1:Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;

    iget-object v0, v0, Lcom/facebook/PlacePickerFragment$AsNeededLoadingStrategy;->loader:Lcom/facebook/GraphObjectPagingLoader;

    invoke-virtual {v0}, Lcom/facebook/GraphObjectPagingLoader;->followNextLink()V

    .line 447
    :cond_0
    return-void
.end method
