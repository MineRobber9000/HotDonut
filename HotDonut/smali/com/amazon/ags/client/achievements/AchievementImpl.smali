.class public Lcom/amazon/ags/client/achievements/AchievementImpl;
.super Ljava/lang/Object;
.source "AchievementImpl.java"

# interfaces
.implements Lcom/amazon/ags/api/achievements/Achievement;


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "AC"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final dateUnlocked:Ljava/util/Date;

.field private final description:Ljava/lang/String;

.field private final hidden:Z

.field private final id:Ljava/lang/String;

.field private final pointValue:I

.field private final position:I

.field private final progress:F

.field private final title:Ljava/lang/String;

.field private final unlocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/achievements/AchievementImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/achievements/AchievementImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZFILjava/util/Date;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "pointValue"    # I
    .param p5, "hidden"    # Z
    .param p6, "unlocked"    # Z
    .param p7, "progress"    # F
    .param p8, "position"    # I
    .param p9, "dateUnlocked"    # Ljava/util/Date;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->id:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->title:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->description:Ljava/lang/String;

    .line 40
    iput p4, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->pointValue:I

    .line 41
    iput-boolean p5, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->hidden:Z

    .line 42
    iput-boolean p6, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->unlocked:Z

    .line 43
    iput p7, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->progress:F

    .line 44
    iput p8, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->position:I

    .line 45
    iput-object p9, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->dateUnlocked:Ljava/util/Date;

    .line 46
    return-void
.end method

.method public static copyWithNewProgress(Lcom/amazon/ags/api/achievements/Achievement;F)Lcom/amazon/ags/api/achievements/Achievement;
    .locals 10
    .param p0, "source"    # Lcom/amazon/ags/api/achievements/Achievement;
    .param p1, "newProgress"    # F

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 49
    sget-object v1, Lcom/amazon/ags/client/achievements/AchievementImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Copying new achievement from source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with progress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    cmpl-float v1, p1, v4

    if-ltz v1, :cond_0

    const/4 v6, 0x1

    .line 52
    .local v6, "newUnlocked":Z
    :goto_0
    invoke-static {p1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 53
    .local v7, "cappedProgress":F
    new-instance v0, Lcom/amazon/ags/client/achievements/AchievementImpl;

    invoke-interface {p0}, Lcom/amazon/ags/api/achievements/Achievement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/amazon/ags/api/achievements/Achievement;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/amazon/ags/api/achievements/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/amazon/ags/api/achievements/Achievement;->getPointValue()I

    move-result v4

    invoke-interface {p0}, Lcom/amazon/ags/api/achievements/Achievement;->isHidden()Z

    move-result v5

    invoke-interface {p0}, Lcom/amazon/ags/api/achievements/Achievement;->getPosition()I

    move-result v8

    invoke-interface {p0}, Lcom/amazon/ags/api/achievements/Achievement;->getDateUnlocked()Ljava/util/Date;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/amazon/ags/client/achievements/AchievementImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZFILjava/util/Date;)V

    .line 56
    .local v0, "achievement":Lcom/amazon/ags/api/achievements/Achievement;
    return-object v0

    .line 50
    .end local v0    # "achievement":Lcom/amazon/ags/api/achievements/Achievement;
    .end local v6    # "newUnlocked":Z
    .end local v7    # "cappedProgress":F
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getDateUnlocked()Ljava/util/Date;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->dateUnlocked:Ljava/util/Date;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getPointValue()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->pointValue:I

    return v0
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->position:I

    return v0
.end method

.method public final getProgress()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->progress:F

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final isHidden()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->hidden:Z

    return v0
.end method

.method public final isUnlocked()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->unlocked:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Achievement Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->progress:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n pointValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->pointValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n hidden: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->hidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n unlocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->unlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n dateUnlocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/achievements/AchievementImpl;->dateUnlocked:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method
