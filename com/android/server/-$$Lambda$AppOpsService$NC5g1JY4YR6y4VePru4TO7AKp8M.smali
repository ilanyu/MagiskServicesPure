.class public final synthetic Lcom/android/server/-$$Lambda$AppOpsService$NC5g1JY4YR6y4VePru4TO7AKp8M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$NC5g1JY4YR6y4VePru4TO7AKp8M;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/-$$Lambda$AppOpsService$NC5g1JY4YR6y4VePru4TO7AKp8M;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$AppOpsService$NC5g1JY4YR6y4VePru4TO7AKp8M;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$AppOpsService$NC5g1JY4YR6y4VePru4TO7AKp8M;->INSTANCE:Lcom/android/server/-$$Lambda$AppOpsService$NC5g1JY4YR6y4VePru4TO7AKp8M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    check-cast p1, Lcom/android/server/AppOpsService;

    check-cast p2, Landroid/util/ArraySet;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    check-cast p5, Ljava/lang/String;

    check-cast p6, Ljava/lang/Boolean;

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    move-object p0, p1

    move-object p1, p2

    move p2, p3

    move p3, p4

    move-object p4, p5

    move p5, p6

    invoke-static/range {p0 .. p5}, Lcom/android/server/AppOpsService;->lambda$NC5g1JY4YR6y4VePru4TO7AKp8M(Lcom/android/server/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;Z)V

    return-void
.end method
