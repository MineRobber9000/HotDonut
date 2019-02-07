.class Lcom/jirbo/adcolony/Analytics$MonitorThread;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field volatile terminate:Z

.field final synthetic this$0:Lcom/jirbo/adcolony/Analytics;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/Analytics;)V
    .locals 1

    .prologue
    .line 174
    iput-object p1, p0, Lcom/jirbo/adcolony/Analytics$MonitorThread;->this$0:Lcom/jirbo/adcolony/Analytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/Analytics$MonitorThread;->terminate:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 180
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    .line 185
    .local v0, "activity":Landroid/app/Activity;
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    iget-boolean v1, p0, Lcom/jirbo/adcolony/Analytics$MonitorThread;->terminate:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdManager;->startRefresh()V

    .line 200
    :cond_0
    :goto_1
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    :goto_2
    iget-boolean v1, p0, Lcom/jirbo/adcolony/Analytics$MonitorThread;->terminate:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/ReportingManager;->flush()V

    .line 209
    invoke-static {}, Lcom/jirbo/adcolony/StateManager;->unload()V

    .line 210
    iget-object v1, p0, Lcom/jirbo/adcolony/Analytics$MonitorThread;->this$0:Lcom/jirbo/adcolony/Analytics;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/Analytics;->updateActiveStatus(Z)V

    .line 211
    return-void

    .line 217
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/jirbo/adcolony/AdManager;->last_refresh_time_ms:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x927c0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 219
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->adManager()Lcom/jirbo/adcolony/AdManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdManager;->startRefresh()V

    goto :goto_1

    .line 187
    :catch_0
    move-exception v1

    goto :goto_0

    .line 202
    :catch_1
    move-exception v1

    goto :goto_2
.end method
