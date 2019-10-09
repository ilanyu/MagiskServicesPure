.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KN9CcjjmJTg_PJcamzzLgVvQt9M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KN9CcjjmJTg_PJcamzzLgVvQt9M;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KN9CcjjmJTg_PJcamzzLgVvQt9M;

    invoke-direct {v0}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KN9CcjjmJTg_PJcamzzLgVvQt9M;-><init>()V

    sput-object v0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KN9CcjjmJTg_PJcamzzLgVvQt9M;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KN9CcjjmJTg_PJcamzzLgVvQt9M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/server/autofill/RemoteFillService;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService;->lambda$KN9CcjjmJTg_PJcamzzLgVvQt9M(Lcom/android/server/autofill/RemoteFillService;)V

    return-void
.end method
