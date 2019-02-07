.class Lcom/jirbo/adcolony/AdManager$1;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdManager;->startRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/AdManager;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdManager;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/jirbo/adcolony/AdManager$1;->this$0:Lcom/jirbo/adcolony/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$1;->this$0:Lcom/jirbo/adcolony/AdManager;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdManager;->runRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    invoke-static {}, Lcom/jirbo/adcolony/StateManager;->saveState()V

    .line 244
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$1;->this$0:Lcom/jirbo/adcolony/AdManager;

    iget-object v2, v1, Lcom/jirbo/adcolony/AdManager;->downloader:Lcom/jirbo/adcolony/AdManager$Downloader;

    monitor-enter v2

    .line 246
    :try_start_1
    iget-object v1, p0, Lcom/jirbo/adcolony/AdManager$1;->this$0:Lcom/jirbo/adcolony/AdManager;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/jirbo/adcolony/AdManager;->refreshing:Z

    .line 247
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 239
    .local v0, "err":Ljava/lang/Exception;
    const-string v1, "Error refreshing AdColony\n"

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    .end local v0    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
