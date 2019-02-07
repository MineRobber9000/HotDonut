.class public Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;
.super Ljava/lang/Object;
.source "SynchronizeBlobRequest.java"


# static fields
.field private static final DEFAULT_STRATEGY:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;


# instance fields
.field private callback:Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;

.field private conflictStrategy:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/amazon/ags/constants/whispersync/ConflictStrategy;->PLAYER_SELECT:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    sput-object v0, Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;->DEFAULT_STRATEGY:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;->DEFAULT_STRATEGY:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    iput-object v0, p0, Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;->conflictStrategy:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;->callback:Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;

    .line 34
    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;->callback:Lcom/amazon/ags/api/whispersync/SynchronizeBlobCallback;

    return-object v0
.end method

.method public final getConflictStrategy()Lcom/amazon/ags/constants/whispersync/ConflictStrategy;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;->conflictStrategy:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    return-object v0
.end method

.method public final setConflictStrategy(Lcom/amazon/ags/constants/whispersync/ConflictStrategy;)V
    .locals 2
    .param p1, "strategy"    # Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Conflict Strategy may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/amazon/ags/api/whispersync/SynchronizeBlobRequest;->conflictStrategy:Lcom/amazon/ags/constants/whispersync/ConflictStrategy;

    .line 46
    return-void
.end method
