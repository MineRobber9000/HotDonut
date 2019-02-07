.class Lcom/facebook/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final stringsToReplace:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final behavior:Lcom/facebook/LoggingBehaviors;

.field private contents:Ljava/lang/StringBuilder;

.field private priority:I

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/Logger;->stringsToReplace:Ljava/util/HashMap;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;)V
    .locals 2
    .param p1, "behavior"    # Lcom/facebook/LoggingBehaviors;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/Logger;->priority:I

    .line 73
    const-string v0, "tag"

    invoke-static {p2, v0}, Lcom/facebook/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/facebook/Logger;->behavior:Lcom/facebook/LoggingBehaviors;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FacebookSDK."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Logger;->tag:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/Logger;->contents:Ljava/lang/StringBuilder;

    .line 78
    return-void
.end method

.method public static log(Lcom/facebook/LoggingBehaviors;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "behavior"    # Lcom/facebook/LoggingBehaviors;
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehaviors;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-static {p3}, Lcom/facebook/Logger;->replaceStrings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 58
    const-string v0, "FacebookSDK."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FacebookSDK."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 61
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    return-void
.end method

.method public static log(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "behavior"    # Lcom/facebook/LoggingBehaviors;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x3

    invoke-static {p0, v0, p1, p2}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static varargs log(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "behavior"    # Lcom/facebook/LoggingBehaviors;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehaviors;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "string":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-static {p0, v1, p1, v0}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static declared-synchronized registerAccessToken(Ljava/lang/String;)V
    .locals 2
    .param p0, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v1, Lcom/facebook/Logger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/LoggingBehaviors;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehaviors;

    invoke-static {v0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehaviors;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const-string v0, "ACCESS_TOKEN_REMOVED"

    invoke-static {p0, v0}, Lcom/facebook/Logger;->registerStringToReplace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit v1

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerStringToReplace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "replace"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v1, Lcom/facebook/Logger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/Logger;->stringsToReplace:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v1

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized replaceStrings(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v3, Lcom/facebook/Logger;

    monitor-enter v3

    :try_start_0
    sget-object v1, Lcom/facebook/Logger;->stringsToReplace:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 69
    monitor-exit v3

    return-object p0

    .line 66
    :cond_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 67
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p0

    goto :goto_0

    .line 66
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method private shouldLog()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/facebook/Logger;->behavior:Lcom/facebook/LoggingBehaviors;

    invoke-static {v0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehaviors;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/facebook/Logger;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/facebook/Logger;->contents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_0
    return-void
.end method

.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/facebook/Logger;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/facebook/Logger;->contents:Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    return-void
.end method

.method public append(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/facebook/Logger;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/facebook/Logger;->contents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 109
    :cond_0
    return-void
.end method

.method public appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 124
    const-string v0, "  %s:\t%s\n"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/Logger;->contents:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Logger;->replaceStrings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/facebook/Logger;->priority:I

    return v0
.end method

.method public log()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/Logger;->contents:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/Logger;->logString(Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/Logger;->contents:Ljava/lang/StringBuilder;

    .line 98
    return-void
.end method

.method public logString(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/Logger;->behavior:Lcom/facebook/LoggingBehaviors;

    iget v1, p0, Lcom/facebook/Logger;->priority:I

    iget-object v2, p0, Lcom/facebook/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/facebook/Logger;->log(Lcom/facebook/LoggingBehaviors;ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setPriority(I)V
    .locals 10
    .param p1, "value"    # I

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "value"

    new-array v2, v9, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/facebook/Validate;->oneOf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iput p1, p0, Lcom/facebook/Logger;->priority:I

    .line 88
    return-void
.end method
