.class Lcom/facebook/PlacePickerFragment$2;
.super Ljava/util/TimerTask;
.source "PlacePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/PlacePickerFragment;->createSearchTextTimer()Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/PlacePickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/PlacePickerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/PlacePickerFragment$2;->this$0:Lcom/facebook/PlacePickerFragment;

    .line 391
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/facebook/PlacePickerFragment$2;->this$0:Lcom/facebook/PlacePickerFragment;

    invoke-static {v0}, Lcom/facebook/PlacePickerFragment;->access$25(Lcom/facebook/PlacePickerFragment;)V

    .line 395
    return-void
.end method
