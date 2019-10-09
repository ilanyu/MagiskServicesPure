.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerService$3$poTyYzHinA8s8lAJ-y6Bb3JsBNo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/ProcessCpuTracker$FilterStats;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$3$poTyYzHinA8s8lAJ-y6Bb3JsBNo;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$3$poTyYzHinA8s8lAJ-y6Bb3JsBNo;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$ActivityManagerService$3$poTyYzHinA8s8lAJ-y6Bb3JsBNo;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$3$poTyYzHinA8s8lAJ-y6Bb3JsBNo;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$3$poTyYzHinA8s8lAJ-y6Bb3JsBNo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 2

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService$3;->lambda$handleMessage$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result p1

    return p1
.end method
