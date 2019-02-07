.class Lcom/jirbo/adcolony/Analytics$AnalyticsSubmission;
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
    name = "AnalyticsSubmission"
.end annotation


# instance fields
.field json_data:Ljava/lang/String;

.field final synthetic this$0:Lcom/jirbo/adcolony/Analytics;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/Analytics;Ljava/lang/String;)V
    .locals 1
    .param p2, "json_data"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/jirbo/adcolony/Analytics$AnalyticsSubmission;->this$0:Lcom/jirbo/adcolony/Analytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/jirbo/adcolony/Analytics$AnalyticsSubmission;->json_data:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 143
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 147
    const-string v0, "http://www.adtilt.com/clients/index.php?section=tracking&action=appTrack"

    .line 148
    .local v0, "request":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&adcol_version=1.9.11"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v2, "dinosaur"

    invoke-static {v0, v2}, Lcom/jirbo/adcolony/URLSigner;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jirbo/adcolony/Analytics$AnalyticsSubmission;->json_data:Ljava/lang/String;

    const-string v4, "text/json"

    invoke-static {v2, v3, v4}, Lcom/jirbo/adcolony/HTTPRequest;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "result":Ljava/lang/String;
    const-string v2, " 200 "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_0

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 157
    iget-object v3, p0, Lcom/jirbo/adcolony/Analytics$AnalyticsSubmission;->this$0:Lcom/jirbo/adcolony/Analytics;

    monitor-enter v3

    .line 159
    :try_start_0
    iget-object v2, p0, Lcom/jirbo/adcolony/Analytics$AnalyticsSubmission;->this$0:Lcom/jirbo/adcolony/Analytics;

    iget-object v2, v2, Lcom/jirbo/adcolony/Analytics;->properties:Lcom/jirbo/adcolony/JSON$JSObject;

    const-string v4, "d_session_times"

    new-instance v5, Lcom/jirbo/adcolony/JSON$JSArray;

    invoke-direct {v5}, Lcom/jirbo/adcolony/JSON$JSArray;-><init>()V

    invoke-virtual {v2, v4, v5}, Lcom/jirbo/adcolony/JSON$JSObject;->set(Ljava/lang/String;Lcom/jirbo/adcolony/JSON$JSObject;)V

    .line 160
    iget-object v2, p0, Lcom/jirbo/adcolony/Analytics$AnalyticsSubmission;->this$0:Lcom/jirbo/adcolony/Analytics;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/Analytics;->saveProperties()V

    .line 161
    monitor-exit v3

    .line 171
    :goto_0
    return-void

    .line 161
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 166
    :cond_0
    iget-object v3, p0, Lcom/jirbo/adcolony/Analytics$AnalyticsSubmission;->this$0:Lcom/jirbo/adcolony/Analytics;

    monitor-enter v3

    .line 168
    :try_start_1
    iget-object v2, p0, Lcom/jirbo/adcolony/Analytics$AnalyticsSubmission;->this$0:Lcom/jirbo/adcolony/Analytics;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/Analytics;->saveProperties()V

    .line 169
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method
