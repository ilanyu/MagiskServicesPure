.class public final synthetic Lcom/android/server/-$$Lambda$AppOpsService$1lQKm3WHEUQsD7KzYyJ5stQSc04;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$1lQKm3WHEUQsD7KzYyJ5stQSc04;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/-$$Lambda$AppOpsService$1lQKm3WHEUQsD7KzYyJ5stQSc04;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$AppOpsService$1lQKm3WHEUQsD7KzYyJ5stQSc04;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$AppOpsService$1lQKm3WHEUQsD7KzYyJ5stQSc04;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$1lQKm3WHEUQsD7KzYyJ5stQSc04;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Lcom/android/server/AppOpsService;

    check-cast p2, Landroid/util/ArraySet;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    check-cast p5, Ljava/lang/String;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/AppOpsService;->lambda$1lQKm3WHEUQsD7KzYyJ5stQSc04(Lcom/android/server/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V

    return-void
.end method
