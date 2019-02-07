.class public final Lcom/facebook/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field private static final ANALYTICS_EVENT:Ljava/lang/String; = "event"

.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field private static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field private static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

.field private static final ATTRIBUTION_KEY:Ljava/lang/String; = "attribution"

.field private static final ATTRIBUTION_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.attributionTracking"

.field private static final DEFAULT_CORE_POOL_SIZE:I = 0x5

.field private static final DEFAULT_KEEP_ALIVE:I = 0x1

.field private static final DEFAULT_MAXIMUM_POOL_SIZE:I = 0x80

.field private static final DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static final DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCK:Ljava/lang/Object;

.field static final LOG_TAG_BASE:Ljava/lang/String; = "FacebookSDK."

.field private static final MOBILE_INSTALL_EVENT:Ljava/lang/String; = "MOBILE_APP_INSTALL"

.field private static final PUBLISH_ACTIVITY_PATH:Ljava/lang/String; = "%s/activities"

.field private static final SUPPORTS_ATTRIBUTION:Ljava/lang/String; = "supports_attribution"

.field private static volatile executor:Ljava/util/concurrent/Executor;

.field private static final loggingBehaviors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/facebook/LoggingBehaviors;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/Settings;->LOCK:Ljava/lang/Object;

    .line 49
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 48
    sput-object v0, Lcom/facebook/Settings;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    .line 60
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/Settings;->DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    .line 62
    new-instance v0, Lcom/facebook/Settings$1;

    invoke-direct {v0}, Lcom/facebook/Settings$1;-><init>()V

    sput-object v0, Lcom/facebook/Settings;->DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addLoggingBehavior(Lcom/facebook/LoggingBehaviors;)V
    .locals 2
    .param p0, "behavior"    # Lcom/facebook/LoggingBehaviors;

    .prologue
    .line 95
    sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 96
    :try_start_0
    sget-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    monitor-exit v1

    .line 98
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final clearLoggingBehaviors()V
    .locals 2

    .prologue
    .line 122
    sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 123
    :try_start_0
    sget-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 122
    monitor-exit v1

    .line 125
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getAsyncTaskExecutor()Ljava/util/concurrent/Executor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 179
    const/4 v1, 0x0

    .line 181
    .local v1, "executorField":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v4, Landroid/os/AsyncTask;

    const-string v5, "THREAD_POOL_EXECUTOR"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 186
    if-nez v1, :cond_0

    move-object v2, v3

    .line 205
    :goto_0
    return-object v2

    .line 182
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchFieldException;
    move-object v2, v3

    .line 183
    goto :goto_0

    .line 190
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :cond_0
    const/4 v2, 0x0

    .line 192
    .local v2, "executorObject":Ljava/lang/Object;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 197
    if-nez v2, :cond_1

    move-object v2, v3

    .line 198
    goto :goto_0

    .line 193
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    move-object v2, v3

    .line 194
    goto :goto_0

    .line 201
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    instance-of v4, v2, Ljava/util/concurrent/Executor;

    if-nez v4, :cond_2

    move-object v2, v3

    .line 202
    goto :goto_0

    .line 205
    :cond_2
    check-cast v2, Ljava/util/concurrent/Executor;

    goto :goto_0
.end method

.method public static getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v3, 0x0

    .line 263
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v1, v2, v0

    .line 264
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Lcom/facebook/Settings;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 265
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v6, v3

    .line 270
    :goto_0
    return-object v6

    .line 268
    :cond_1
    const-string v0, "aid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, "attributionId":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 9

    .prologue
    .line 152
    sget-object v8, Lcom/facebook/Settings;->LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 153
    :try_start_0
    sget-object v1, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_1

    .line 154
    invoke-static {}, Lcom/facebook/Settings;->getAsyncTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 155
    .local v0, "executor":Ljava/util/concurrent/Executor;
    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x5

    const/16 v2, 0x80

    .line 157
    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/facebook/Settings;->DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/facebook/Settings;->DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    .line 156
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 159
    .restart local v0    # "executor":Ljava/util/concurrent/Executor;
    :cond_0
    sput-object v0, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;

    .line 152
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    sget-object v1, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;

    return-object v1

    .line 152
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static final getLoggingBehaviors()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/LoggingBehaviors;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 81
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    sget-object v2, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehaviors;)Z
    .locals 2
    .param p0, "behavior"    # Lcom/facebook/LoggingBehaviors;

    .prologue
    .line 138
    sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 139
    :try_start_0
    sget-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static publishInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    const/16 v17, 0x0

    .line 259
    :goto_0
    return v17

    .line 220
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/facebook/Settings;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "attributionId":Ljava/lang/String;
    const-string v17, "com.facebook.sdk.attributionTracking"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 222
    .local v11, "preferences":Landroid/content/SharedPreferences;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "ping"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 223
    .local v9, "pingKey":Ljava/lang/String;
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    invoke-interface {v11, v9, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 224
    .local v7, "lastPing":J
    const-wide/16 v17, 0x0

    cmp-long v17, v7, v17

    if-nez v17, :cond_2

    if-eqz v3, :cond_2

    .line 225
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v16, "supportsAttributionParams":Landroid/os/Bundle;
    const-string v17, "fields"

    const-string v18, "supports_attribution"

    invoke-virtual/range {v16 .. v18}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/facebook/Request;->newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v10

    .line 228
    .local v10, "pingRequest":Lcom/facebook/Request;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {v10}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/GraphObject;

    move-result-object v15

    .line 231
    .local v15, "supportResponse":Lcom/facebook/GraphObject;
    const-string v17, "supports_attribution"

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/facebook/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 233
    .local v4, "doesSupportAttribution":Ljava/lang/Object;
    instance-of v0, v4, Ljava/lang/Boolean;

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 234
    new-instance v17, Lorg/json/JSONException;

    .line 235
    const-string v18, "%s contains %s instead of a Boolean"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "supports_attribution"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v4, v19, v20

    .line 234
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v3    # "attributionId":Ljava/lang/String;
    .end local v4    # "doesSupportAttribution":Ljava/lang/Object;
    .end local v7    # "lastPing":J
    .end local v9    # "pingKey":Ljava/lang/String;
    .end local v10    # "pingRequest":Lcom/facebook/Request;
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    .end local v15    # "supportResponse":Lcom/facebook/GraphObject;
    .end local v16    # "supportsAttributionParams":Landroid/os/Bundle;
    :catch_0
    move-exception v5

    .line 257
    .local v5, "e":Ljava/lang/Exception;
    const-string v17, "Facebook-publish"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/facebook/android/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 238
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "attributionId":Ljava/lang/String;
    .restart local v4    # "doesSupportAttribution":Ljava/lang/Object;
    .restart local v7    # "lastPing":J
    .restart local v9    # "pingKey":Ljava/lang/String;
    .restart local v10    # "pingRequest":Lcom/facebook/Request;
    .restart local v11    # "preferences":Landroid/content/SharedPreferences;
    .restart local v15    # "supportResponse":Lcom/facebook/GraphObject;
    .restart local v16    # "supportsAttributionParams":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "doesSupportAttribution":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 239
    invoke-static {}, Lcom/facebook/GraphObjectWrapper;->createGraphObject()Lcom/facebook/GraphObject;

    move-result-object v12

    .line 240
    .local v12, "publishParams":Lcom/facebook/GraphObject;
    const-string v17, "event"

    const-string v18, "MOBILE_APP_INSTALL"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Lcom/facebook/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    const-string v17, "attribution"

    move-object/from16 v0, v17

    invoke-interface {v12, v0, v3}, Lcom/facebook/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    const-string v17, "%s/activities"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 245
    .local v14, "publishUrl":Ljava/lang/String;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v14, v12, v1}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v13

    .line 246
    .local v13, "publishRequest":Lcom/facebook/Request;
    invoke-virtual {v13}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    .line 249
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 250
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-interface {v6, v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "pingRequest":Lcom/facebook/Request;
    .end local v12    # "publishParams":Lcom/facebook/GraphObject;
    .end local v13    # "publishRequest":Lcom/facebook/Request;
    .end local v14    # "publishUrl":Ljava/lang/String;
    .end local v15    # "supportResponse":Lcom/facebook/GraphObject;
    .end local v16    # "supportsAttributionParams":Landroid/os/Bundle;
    :cond_2
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public static final removeLoggingBehavior(Lcom/facebook/LoggingBehaviors;)V
    .locals 2
    .param p0, "behavior"    # Lcom/facebook/LoggingBehaviors;

    .prologue
    .line 110
    sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 110
    monitor-exit v1

    .line 113
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 172
    const-string v0, "executor"

    invoke-static {p0, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget-object v1, Lcom/facebook/Settings;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_0
    sput-object p0, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;

    .line 173
    monitor-exit v1

    .line 176
    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
