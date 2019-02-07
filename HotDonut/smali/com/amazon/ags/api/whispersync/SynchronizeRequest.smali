.class public abstract Lcom/amazon/ags/api/whispersync/SynchronizeRequest;
.super Ljava/lang/Object;
.source "SynchronizeRequest.java"


# static fields
.field private static final DEFAULT_STRATEGY:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;


# instance fields
.field private conflictStrategy:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->PLAYER_SELECT:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    sput-object v0, Lcom/amazon/ags/api/whispersync/SynchronizeRequest;->DEFAULT_STRATEGY:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/amazon/ags/api/whispersync/SynchronizeRequest;->DEFAULT_STRATEGY:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    iput-object v0, p0, Lcom/amazon/ags/api/whispersync/SynchronizeRequest;->conflictStrategy:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    return-void
.end method


# virtual methods
.method public getConflictStrategy()Lcom/amazon/ags/constants/whispersync/ConflictStrategy;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazon/ags/api/whispersync/SynchronizeRequest;->conflictStrategy:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/ags/api/whispersync/SynchronizeRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public setConflictStrategy(Lcom/amazon/ags/constants/whispersync/ConflictStrategy;)V
    .locals 0
    .param p1, "conflictStrategy"    # Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/amazon/ags/api/whispersync/SynchronizeRequest;->conflictStrategy:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    .line 46
    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/amazon/ags/api/whispersync/SynchronizeRequest;->description:Ljava/lang/String;

    .line 34
    return-void
.end method
