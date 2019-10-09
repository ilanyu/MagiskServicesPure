.class final Lcom/android/server/InputMethodManagerService$DebugFlags;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DebugFlags"
.end annotation


# static fields
.field static final FLAG_OPTIMIZE_START_INPUT:Lcom/android/server/InputMethodManagerService$DebugFlag;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 296
    new-instance v0, Lcom/android/server/InputMethodManagerService$DebugFlag;

    const-string v1, "debug.optimize_startinput"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/InputMethodManagerService$DebugFlag;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/server/InputMethodManagerService$DebugFlags;->FLAG_OPTIMIZE_START_INPUT:Lcom/android/server/InputMethodManagerService$DebugFlag;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
