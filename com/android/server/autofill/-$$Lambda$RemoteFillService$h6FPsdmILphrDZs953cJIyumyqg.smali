.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteFillService$h6FPsdmILphrDZs953cJIyumyqg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$h6FPsdmILphrDZs953cJIyumyqg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$h6FPsdmILphrDZs953cJIyumyqg;

    invoke-direct {v0}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$h6FPsdmILphrDZs953cJIyumyqg;-><init>()V

    sput-object v0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$h6FPsdmILphrDZs953cJIyumyqg;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$h6FPsdmILphrDZs953cJIyumyqg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/server/autofill/RemoteFillService;

    check-cast p2, Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    invoke-static {p1, p2}, Lcom/android/server/autofill/RemoteFillService;->lambda$h6FPsdmILphrDZs953cJIyumyqg(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    return-void
.end method
