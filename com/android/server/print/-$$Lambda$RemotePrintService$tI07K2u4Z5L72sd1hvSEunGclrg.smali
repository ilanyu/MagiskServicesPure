.class public final synthetic Lcom/android/server/print/-$$Lambda$RemotePrintService$tI07K2u4Z5L72sd1hvSEunGclrg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$tI07K2u4Z5L72sd1hvSEunGclrg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/print/-$$Lambda$RemotePrintService$tI07K2u4Z5L72sd1hvSEunGclrg;

    invoke-direct {v0}, Lcom/android/server/print/-$$Lambda$RemotePrintService$tI07K2u4Z5L72sd1hvSEunGclrg;-><init>()V

    sput-object v0, Lcom/android/server/print/-$$Lambda$RemotePrintService$tI07K2u4Z5L72sd1hvSEunGclrg;->INSTANCE:Lcom/android/server/print/-$$Lambda$RemotePrintService$tI07K2u4Z5L72sd1hvSEunGclrg;

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

    check-cast p1, Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->lambda$tI07K2u4Z5L72sd1hvSEunGclrg(Lcom/android/server/print/RemotePrintService;)V

    return-void
.end method
