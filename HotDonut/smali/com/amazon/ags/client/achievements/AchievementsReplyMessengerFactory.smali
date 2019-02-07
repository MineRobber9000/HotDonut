.class public Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;
.super Lcom/amazon/ags/client/BaseReplyMessengerFactory;
.source "AchievementsReplyMessengerFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/ags/api/RequestResponse;",
        ">",
        "Lcom/amazon/ags/client/BaseReplyMessengerFactory",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "AC"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    .local p0, "this":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<TT;>;"
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/BaseReplyMessengerFactory;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected final processMessage(Landroid/os/Message;)Lcom/amazon/ags/api/RequestResponse;
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<TT;>;"
    const/16 v7, 0x11

    .line 47
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 48
    .local v2, "responseBundle":Landroid/os/Bundle;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 49
    .local v3, "responseCode":I
    sget-object v4, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing incoming service response message of type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and responseCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 101
    :pswitch_0
    sget-object v4, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal value received for request type parameter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Received an invalid value for request type parameter"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    :pswitch_1
    if-eq v3, v7, :cond_0

    .line 55
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 56
    .local v0, "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service request was a failure with code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", constructing failure response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v1, Lcom/amazon/ags/client/achievements/GetAchievementsResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/achievements/GetAchievementsResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 99
    .end local v0    # "errorCode":I
    :goto_0
    return-object v1

    .line 61
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->unbundleRequestAchievementsResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v1

    goto :goto_0

    .line 63
    :pswitch_2
    if-eq v3, v7, :cond_1

    .line 64
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 65
    .restart local v0    # "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service request was a failure with code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", constructing failure response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v1, Lcom/amazon/ags/client/achievements/GetAchievementResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/achievements/GetAchievementResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 68
    .local v1, "response":Lcom/amazon/ags/api/achievements/GetAchievementResponse;
    goto :goto_0

    .line 70
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/achievements/GetAchievementResponse;
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->unbundleRequestAchievementResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v1

    goto :goto_0

    .line 72
    :pswitch_3
    if-eq v3, v7, :cond_2

    .line 73
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 74
    .restart local v0    # "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service request was a failure with code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", constructing failure response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v1, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 77
    .local v1, "response":Lcom/amazon/ags/api/RequestResponse;
    goto :goto_0

    .line 79
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/RequestResponse;
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->unbundleUpdateProgressResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v1

    goto :goto_0

    .line 81
    :pswitch_4
    if-eq v3, v7, :cond_3

    .line 82
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 83
    .restart local v0    # "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service request was a failure with code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", constructing failure response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v1, Lcom/amazon/ags/client/achievements/LoadIconResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/achievements/LoadIconResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 86
    .restart local v1    # "response":Lcom/amazon/ags/api/RequestResponse;
    goto/16 :goto_0

    .line 88
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/RequestResponse;
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->unbundleLoadIconResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v1

    goto/16 :goto_0

    .line 92
    :pswitch_5
    if-eq v3, v7, :cond_4

    .line 93
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 94
    .restart local v0    # "errorCode":I
    sget-object v4, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service request was a failure with code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", constructing failure response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v1, Lcom/amazon/ags/client/RequestResponseImp;

    invoke-static {v0}, Lcom/amazon/ags/api/ErrorCode;->fromServiceResponseCode(I)Lcom/amazon/ags/api/ErrorCode;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 97
    .restart local v1    # "response":Lcom/amazon/ags/api/RequestResponse;
    goto/16 :goto_0

    .line 99
    .end local v0    # "errorCode":I
    .end local v1    # "response":Lcom/amazon/ags/api/RequestResponse;
    :cond_4
    invoke-virtual {p0, v2, v3}, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->unbundleRequestResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v1

    goto/16 :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public final unbundleLoadIconResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "replyCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<TT;>;"
    sget-object v1, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

    const-string v2, "Entering unbundleLoadIconResponse..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v1, "ACHIEVEMENT_ICON_IMAGE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 188
    .local v0, "image":[B
    sget-object v1, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icon byte array in bundle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v1, Lcom/amazon/ags/client/achievements/LoadIconResponseImp;

    invoke-direct {v1, v0, p2}, Lcom/amazon/ags/client/achievements/LoadIconResponseImp;-><init>([BI)V

    return-object v1
.end method

.method public final unbundleRequestAchievementResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 16
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "replyCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<TT;>;"
    const-string v13, "ACHIEVEMENT_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "id":Ljava/lang/String;
    const-string v13, "ACHIEVEMENT_TITLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "title":Ljava/lang/String;
    const-string v13, "ACHIEVEMENT_DESCRIPTION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "description":Ljava/lang/String;
    const-string v13, "ACHIEVEMENT_POINTS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 146
    .local v5, "pointValue":I
    const-string v13, "ACHIEVEMENT_HIDDEN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 147
    .local v6, "hidden":Z
    const-string v13, "ACHIEVEMENT_UNLOCKED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 148
    .local v7, "unlocked":Z
    const-string v13, "ACHIEVEMENT_UPDATE_PERCENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    .line 149
    .local v8, "progress":F
    const-string v13, "ACHIEVEMENT_POSITION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 150
    .local v9, "position":I
    const-string v13, "ACHIEVEMENT_DATE_UNLOCKED"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 152
    .local v11, "dateUnlockedLong":J
    if-eqz v7, :cond_0

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-nez v13, :cond_1

    .line 153
    :cond_0
    const/4 v10, 0x0

    .line 157
    .local v10, "dateUnlocked":Ljava/util/Date;
    :goto_0
    new-instance v1, Lcom/amazon/ags/client/achievements/AchievementImpl;

    invoke-direct/range {v1 .. v10}, Lcom/amazon/ags/client/achievements/AchievementImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZFILjava/util/Date;)V

    .line 159
    .local v1, "achievement":Lcom/amazon/ags/api/achievements/Achievement;
    new-instance v13, Lcom/amazon/ags/client/achievements/GetAchievementResponseImp;

    move/from16 v0, p2

    invoke-direct {v13, v1, v0}, Lcom/amazon/ags/client/achievements/GetAchievementResponseImp;-><init>(Lcom/amazon/ags/api/achievements/Achievement;I)V

    return-object v13

    .line 155
    .end local v1    # "achievement":Lcom/amazon/ags/api/achievements/Achievement;
    .end local v10    # "dateUnlocked":Ljava/util/Date;
    :cond_1
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    .restart local v10    # "dateUnlocked":Ljava/util/Date;
    goto :goto_0
.end method

.method public final unbundleRequestAchievementsResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 22
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "replyCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<TT;>;"
    const-string v2, "ACHIEVEMENT_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 112
    .local v16, "id":[Ljava/lang/String;
    const-string v2, "ACHIEVEMENT_TITLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 113
    .local v20, "title":[Ljava/lang/String;
    const-string v2, "ACHIEVEMENT_DESCRIPTION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 114
    .local v13, "description":[Ljava/lang/String;
    const-string v2, "ACHIEVEMENT_POINTS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v17

    .line 115
    .local v17, "pointValue":[I
    const-string v2, "ACHIEVEMENT_HIDDEN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v14

    .line 116
    .local v14, "hidden":[Z
    const-string v2, "ACHIEVEMENT_UNLOCKED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v21

    .line 117
    .local v21, "unlocked":[Z
    const-string v2, "ACHIEVEMENT_UPDATE_PERCENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v19

    .line 118
    .local v19, "progress":[F
    const-string v2, "ACHIEVEMENT_POSITION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v18

    .line 119
    .local v18, "position":[I
    const-string v2, "ACHIEVEMENT_DATE_UNLOCKED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v12

    .line 121
    .local v12, "dateUnlockedLong":[J
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    array-length v2, v0

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v11, "achievements":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/ags/api/achievements/Achievement;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v2, v0

    if-ge v15, v2, :cond_2

    .line 125
    aget-boolean v2, v21, v15

    if-eqz v2, :cond_0

    if-nez v12, :cond_1

    .line 126
    :cond_0
    const/4 v10, 0x0

    .line 130
    .local v10, "dateUnlocked":Ljava/util/Date;
    :goto_1
    new-instance v1, Lcom/amazon/ags/client/achievements/AchievementImpl;

    aget-object v2, v16, v15

    aget-object v3, v20, v15

    aget-object v4, v13, v15

    aget v5, v17, v15

    aget-boolean v6, v14, v15

    aget-boolean v7, v21, v15

    aget v8, v19, v15

    aget v9, v18, v15

    invoke-direct/range {v1 .. v10}, Lcom/amazon/ags/client/achievements/AchievementImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZFILjava/util/Date;)V

    .line 132
    .local v1, "a":Lcom/amazon/ags/api/achievements/Achievement;
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "a":Lcom/amazon/ags/api/achievements/Achievement;
    .end local v10    # "dateUnlocked":Ljava/util/Date;
    :cond_1
    new-instance v10, Ljava/util/Date;

    aget-wide v2, v12, v15

    invoke-direct {v10, v2, v3}, Ljava/util/Date;-><init>(J)V

    .restart local v10    # "dateUnlocked":Ljava/util/Date;
    goto :goto_1

    .line 135
    .end local v10    # "dateUnlocked":Ljava/util/Date;
    :cond_2
    new-instance v2, Lcom/amazon/ags/client/achievements/GetAchievementsResponseImp;

    move/from16 v0, p2

    invoke-direct {v2, v11, v0}, Lcom/amazon/ags/client/achievements/GetAchievementsResponseImp;-><init>(Ljava/util/List;I)V

    return-object v2
.end method

.method public final unbundleRequestResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "replyCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<TT;>;"
    new-instance v0, Lcom/amazon/ags/client/RequestResponseImp;

    sget-object v1, Lcom/amazon/ags/api/ErrorCode;->NONE:Lcom/amazon/ags/api/ErrorCode;

    invoke-direct {v0, p2, v1}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    return-object v0
.end method

.method public final unbundleUpdateProgressResponse(Landroid/os/Bundle;I)Lcom/amazon/ags/api/RequestResponse;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "replyCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;, "Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory<TT;>;"
    const-string v4, "ACHIEVEMENT_NEWLY_UNLOCKED"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 173
    .local v0, "isNewlyUnlocked":Z
    new-instance v3, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImp;

    invoke-direct {v3, v0, p2}, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImp;-><init>(ZI)V

    .line 174
    .local v3, "response":Lcom/amazon/ags/client/achievements/UpdateProgressResponseImp;
    const-string v4, "ACHIEVEMENT_OVERLAY_CALLBACK"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 175
    .local v1, "overlayActionCode":I
    const-string v4, "ACHIEVEMENT_POP_UP_LAYOUT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 176
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_0

    .line 177
    iget-object v4, p0, Lcom/amazon/ags/client/achievements/AchievementsReplyMessengerFactory;->popUpManager:Lcom/amazon/ags/overlay/PopUpManager;

    invoke-virtual {v4, v2, v1}, Lcom/amazon/ags/overlay/PopUpManager;->executePopUp(Landroid/widget/RemoteViews;I)V

    .line 179
    :cond_0
    return-object v3
.end method
