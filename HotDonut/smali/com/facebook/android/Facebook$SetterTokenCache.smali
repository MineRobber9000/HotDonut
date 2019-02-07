.class Lcom/facebook/android/Facebook$SetterTokenCache;
.super Lcom/facebook/TokenCache;
.source "Facebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/android/Facebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetterTokenCache"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/android/Facebook;


# direct methods
.method private constructor <init>(Lcom/facebook/android/Facebook;)V
    .locals 0

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/facebook/android/Facebook$SetterTokenCache;->this$0:Lcom/facebook/android/Facebook;

    invoke-direct {p0}, Lcom/facebook/TokenCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/android/Facebook;Lcom/facebook/android/Facebook$SetterTokenCache;)V
    .locals 0

    .prologue
    .line 1130
    invoke-direct {p0, p1}, Lcom/facebook/android/Facebook$SetterTokenCache;-><init>(Lcom/facebook/android/Facebook;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/facebook/android/Facebook$SetterTokenCache;->this$0:Lcom/facebook/android/Facebook;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/android/Facebook;->access$6(Lcom/facebook/android/Facebook;Ljava/lang/String;)V

    .line 1158
    return-void
.end method

.method public load()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1136
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/facebook/android/Facebook$SetterTokenCache;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$0(Lcom/facebook/android/Facebook;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1137
    iget-object v1, p0, Lcom/facebook/android/Facebook$SetterTokenCache;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$0(Lcom/facebook/android/Facebook;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/TokenCache;->putToken(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1138
    iget-object v1, p0, Lcom/facebook/android/Facebook$SetterTokenCache;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$2(Lcom/facebook/android/Facebook;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/TokenCache;->putExpirationMilliseconds(Landroid/os/Bundle;J)V

    .line 1139
    iget-object v1, p0, Lcom/facebook/android/Facebook$SetterTokenCache;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$3(Lcom/facebook/android/Facebook;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$4([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/TokenCache;->putPermissions(Landroid/os/Bundle;Ljava/util/List;)V

    .line 1140
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/TokenCache;->putIsSSO(Landroid/os/Bundle;Z)V

    .line 1141
    iget-object v1, p0, Lcom/facebook/android/Facebook$SetterTokenCache;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$5(Lcom/facebook/android/Facebook;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/TokenCache;->putLastRefreshMilliseconds(Landroid/os/Bundle;J)V

    .line 1144
    :cond_0
    return-object v0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/facebook/android/Facebook$SetterTokenCache;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {p1}, Lcom/facebook/TokenCache;->getToken(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/android/Facebook;->access$6(Lcom/facebook/android/Facebook;Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/facebook/android/Facebook$SetterTokenCache;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {p1}, Lcom/facebook/TokenCache;->getExpirationMilliseconds(Landroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/android/Facebook;->access$7(Lcom/facebook/android/Facebook;J)V

    .line 1151
    iget-object v0, p0, Lcom/facebook/android/Facebook$SetterTokenCache;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {p1}, Lcom/facebook/TokenCache;->getPermissions(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/android/Facebook;->access$8(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/android/Facebook;->access$9(Lcom/facebook/android/Facebook;[Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/facebook/android/Facebook$SetterTokenCache;->this$0:Lcom/facebook/android/Facebook;

    invoke-static {p1}, Lcom/facebook/TokenCache;->getLastRefreshMilliseconds(Landroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/android/Facebook;->access$10(Lcom/facebook/android/Facebook;J)V

    .line 1153
    return-void
.end method
