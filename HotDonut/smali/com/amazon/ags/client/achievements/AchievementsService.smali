.class public interface abstract Lcom/amazon/ags/client/achievements/AchievementsService;
.super Ljava/lang/Object;
.source "AchievementsService.java"


# virtual methods
.method public abstract loadIcon(Ljava/lang/String;Lcom/amazon/ags/constants/IconSize;ZLcom/amazon/ags/client/GCResponseHandleImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/constants/IconSize;",
            "Z",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/achievements/LoadIconResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestAchievement(Ljava/lang/String;Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestAchievements(Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/achievements/GetAchievementsResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resetAchievement(Ljava/lang/String;Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resetAchievements(Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showAchievementsOverlay(Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/RequestResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateProgress(Ljava/lang/String;FLcom/amazon/ags/client/GCResponseHandleImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<",
            "Lcom/amazon/ags/api/achievements/UpdateProgressResponse;",
            ">;)V"
        }
    .end annotation
.end method
