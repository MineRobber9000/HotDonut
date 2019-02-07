.class public Lcom/amazon/ags/jni/achievements/AchievementsJni;
.super Ljava/lang/Object;
.source "AchievementsJni.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getAchievementResponseFailure(JII)V
.end method

.method public static native getAchievementResponseSuccess(Lcom/amazon/ags/api/achievements/GetAchievementResponse;JI)V
.end method

.method public static native getAchievementsResponseFailure(JII)V
.end method

.method public static native getAchievementsResponseSuccess(Lcom/amazon/ags/api/achievements/GetAchievementsResponse;JI)V
.end method

.method public static native resetAchievementResponseFailure(JII)V
.end method

.method public static native resetAchievementResponseSuccess(Lcom/amazon/ags/api/RequestResponse;JI)V
.end method

.method public static native resetAchievementsResponseFailure(JII)V
.end method

.method public static native resetAchievementsResponseSuccess(Lcom/amazon/ags/api/RequestResponse;JI)V
.end method

.method public static native updateProgressResponseFailure(JII)V
.end method

.method public static native updateProgressResponseSuccess(Lcom/amazon/ags/api/achievements/UpdateProgressResponse;Ljava/lang/String;JI)V
.end method
