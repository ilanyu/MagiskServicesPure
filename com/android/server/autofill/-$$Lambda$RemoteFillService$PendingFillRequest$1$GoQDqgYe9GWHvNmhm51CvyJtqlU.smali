.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteFillService$PendingFillRequest$1$GoQDqgYe9GWHvNmhm51CvyJtqlU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$PendingFillRequest$1$GoQDqgYe9GWHvNmhm51CvyJtqlU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$PendingFillRequest$1$GoQDqgYe9GWHvNmhm51CvyJtqlU;

    invoke-direct {v0}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$PendingFillRequest$1$GoQDqgYe9GWHvNmhm51CvyJtqlU;-><init>()V

    sput-object v0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$PendingFillRequest$1$GoQDqgYe9GWHvNmhm51CvyJtqlU;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteFillService$PendingFillRequest$1$GoQDqgYe9GWHvNmhm51CvyJtqlU;

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

    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->lambda$onSuccess$0(Ljava/lang/Object;)V

    return-void
.end method
