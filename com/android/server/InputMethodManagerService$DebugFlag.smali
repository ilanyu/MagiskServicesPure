.class final Lcom/android/server/InputMethodManagerService$DebugFlag;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DebugFlag"
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;


# instance fields
.field private final mDefaultValue:Z

.field private final mKey:Ljava/lang/String;

.field private mValue:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "LOCK"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 266
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/InputMethodManagerService$DebugFlag;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$DebugFlag;->mKey:Ljava/lang/String;

    .line 274
    iput-boolean p2, p0, Lcom/android/server/InputMethodManagerService$DebugFlag;->mDefaultValue:Z

    .line 275
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$DebugFlag;->mValue:Z

    .line 276
    return-void
.end method


# virtual methods
.method refresh()V
    .registers 4

    .line 279
    sget-object v0, Lcom/android/server/InputMethodManagerService$DebugFlag;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$DebugFlag;->mKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService$DebugFlag;->mDefaultValue:Z

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService$DebugFlag;->mValue:Z

    .line 281
    monitor-exit v0

    .line 282
    return-void

    .line 281
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method value()Z
    .registers 3

    .line 285
    sget-object v0, Lcom/android/server/InputMethodManagerService$DebugFlag;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService$DebugFlag;->mValue:Z

    monitor-exit v0

    return v1

    .line 287
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
