.class Lcom/facebook/PlacePickerFragment$3;
.super Ljava/lang/Object;
.source "PlacePickerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/PlacePickerFragment;->onSearchTextTimerTriggered()V
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
    iput-object p1, p0, Lcom/facebook/PlacePickerFragment$3;->this$0:Lcom/facebook/PlacePickerFragment;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 407
    const/4 v1, 0x0

    .line 409
    .local v1, "error":Lcom/facebook/FacebookException;
    :try_start_0
    iget-object v5, p0, Lcom/facebook/PlacePickerFragment$3;->this$0:Lcom/facebook/PlacePickerFragment;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/facebook/PlacePickerFragment;->loadData(Z)V
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    if-eqz v1, :cond_0

    .line 416
    iget-object v5, p0, Lcom/facebook/PlacePickerFragment$3;->this$0:Lcom/facebook/PlacePickerFragment;

    invoke-virtual {v5}, Lcom/facebook/PlacePickerFragment;->getOnErrorListener()Lcom/facebook/PickerFragment$OnErrorListener;

    move-result-object v4

    .line 417
    .local v4, "onErrorListener":Lcom/facebook/PickerFragment$OnErrorListener;, "Lcom/facebook/PickerFragment$OnErrorListener;"
    if-eqz v4, :cond_5

    .line 418
    invoke-interface {v4, v1}, Lcom/facebook/PickerFragment$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    .line 424
    .end local v4    # "onErrorListener":Lcom/facebook/PickerFragment$OnErrorListener;, "Lcom/facebook/PickerFragment$OnErrorListener;"
    :cond_0
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v3

    .line 411
    .local v3, "fe":Lcom/facebook/FacebookException;
    move-object v1, v3

    .line 415
    if-eqz v1, :cond_0

    .line 416
    iget-object v5, p0, Lcom/facebook/PlacePickerFragment$3;->this$0:Lcom/facebook/PlacePickerFragment;

    invoke-virtual {v5}, Lcom/facebook/PlacePickerFragment;->getOnErrorListener()Lcom/facebook/PickerFragment$OnErrorListener;

    move-result-object v4

    .line 417
    .restart local v4    # "onErrorListener":Lcom/facebook/PickerFragment$OnErrorListener;, "Lcom/facebook/PickerFragment$OnErrorListener;"
    if-eqz v4, :cond_1

    .line 418
    invoke-interface {v4, v1}, Lcom/facebook/PickerFragment$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 420
    :cond_1
    sget-object v5, Lcom/facebook/LoggingBehaviors;->REQUESTS:Lcom/facebook/LoggingBehaviors;

    const-string v6, "PlacePickerFragment"

    const-string v7, "Error loading data : %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-static {v5, v6, v7, v8}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 412
    .end local v3    # "fe":Lcom/facebook/FacebookException;
    .end local v4    # "onErrorListener":Lcom/facebook/PickerFragment$OnErrorListener;, "Lcom/facebook/PickerFragment$OnErrorListener;"
    :catch_1
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    .end local v1    # "error":Lcom/facebook/FacebookException;
    .local v2, "error":Lcom/facebook/FacebookException;
    if-eqz v2, :cond_6

    .line 416
    iget-object v5, p0, Lcom/facebook/PlacePickerFragment$3;->this$0:Lcom/facebook/PlacePickerFragment;

    invoke-virtual {v5}, Lcom/facebook/PlacePickerFragment;->getOnErrorListener()Lcom/facebook/PickerFragment$OnErrorListener;

    move-result-object v4

    .line 417
    .restart local v4    # "onErrorListener":Lcom/facebook/PickerFragment$OnErrorListener;, "Lcom/facebook/PickerFragment$OnErrorListener;"
    if-eqz v4, :cond_2

    .line 418
    invoke-interface {v4, v2}, Lcom/facebook/PickerFragment$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    move-object v1, v2

    .end local v2    # "error":Lcom/facebook/FacebookException;
    .restart local v1    # "error":Lcom/facebook/FacebookException;
    goto :goto_0

    .line 420
    .end local v1    # "error":Lcom/facebook/FacebookException;
    .restart local v2    # "error":Lcom/facebook/FacebookException;
    :cond_2
    sget-object v5, Lcom/facebook/LoggingBehaviors;->REQUESTS:Lcom/facebook/LoggingBehaviors;

    const-string v6, "PlacePickerFragment"

    const-string v7, "Error loading data : %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v2, v8, v10

    invoke-static {v5, v6, v7, v8}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .end local v2    # "error":Lcom/facebook/FacebookException;
    .restart local v1    # "error":Lcom/facebook/FacebookException;
    goto :goto_0

    .line 414
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "onErrorListener":Lcom/facebook/PickerFragment$OnErrorListener;, "Lcom/facebook/PickerFragment$OnErrorListener;"
    :catchall_0
    move-exception v5

    .line 415
    if-eqz v1, :cond_3

    .line 416
    iget-object v6, p0, Lcom/facebook/PlacePickerFragment$3;->this$0:Lcom/facebook/PlacePickerFragment;

    invoke-virtual {v6}, Lcom/facebook/PlacePickerFragment;->getOnErrorListener()Lcom/facebook/PickerFragment$OnErrorListener;

    move-result-object v4

    .line 417
    .restart local v4    # "onErrorListener":Lcom/facebook/PickerFragment$OnErrorListener;, "Lcom/facebook/PickerFragment$OnErrorListener;"
    if-eqz v4, :cond_4

    .line 418
    invoke-interface {v4, v1}, Lcom/facebook/PickerFragment$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    .line 423
    .end local v4    # "onErrorListener":Lcom/facebook/PickerFragment$OnErrorListener;, "Lcom/facebook/PickerFragment$OnErrorListener;"
    :cond_3
    :goto_1
    throw v5

    .line 420
    .restart local v4    # "onErrorListener":Lcom/facebook/PickerFragment$OnErrorListener;, "Lcom/facebook/PickerFragment$OnErrorListener;"
    :cond_4
    sget-object v6, Lcom/facebook/LoggingBehaviors;->REQUESTS:Lcom/facebook/LoggingBehaviors;

    const-string v7, "PlacePickerFragment"

    const-string v8, "Error loading data : %s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    sget-object v5, Lcom/facebook/LoggingBehaviors;->REQUESTS:Lcom/facebook/LoggingBehaviors;

    const-string v6, "PlacePickerFragment"

    const-string v7, "Error loading data : %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-static {v5, v6, v7, v8}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "error":Lcom/facebook/FacebookException;
    .end local v4    # "onErrorListener":Lcom/facebook/PickerFragment$OnErrorListener;, "Lcom/facebook/PickerFragment$OnErrorListener;"
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "error":Lcom/facebook/FacebookException;
    :cond_6
    move-object v1, v2

    .end local v2    # "error":Lcom/facebook/FacebookException;
    .restart local v1    # "error":Lcom/facebook/FacebookException;
    goto :goto_0
.end method
