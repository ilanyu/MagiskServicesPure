.class public final synthetic Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$lvjy01xuWTQLCsbGw02qqI7DYDM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$lvjy01xuWTQLCsbGw02qqI7DYDM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$lvjy01xuWTQLCsbGw02qqI7DYDM;

    invoke-direct {v0}, Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$lvjy01xuWTQLCsbGw02qqI7DYDM;-><init>()V

    sput-object v0, Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$lvjy01xuWTQLCsbGw02qqI7DYDM;->INSTANCE:Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$lvjy01xuWTQLCsbGw02qqI7DYDM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->lambda$pathToString$2([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
