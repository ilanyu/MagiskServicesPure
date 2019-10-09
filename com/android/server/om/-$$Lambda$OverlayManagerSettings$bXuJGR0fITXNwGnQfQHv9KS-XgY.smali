.class public final synthetic Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$bXuJGR0fITXNwGnQfQHv9KS-XgY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$bXuJGR0fITXNwGnQfQHv9KS-XgY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$bXuJGR0fITXNwGnQfQHv9KS-XgY;

    invoke-direct {v0}, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$bXuJGR0fITXNwGnQfQHv9KS-XgY;-><init>()V

    sput-object v0, Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$bXuJGR0fITXNwGnQfQHv9KS-XgY;->INSTANCE:Lcom/android/server/om/-$$Lambda$OverlayManagerSettings$bXuJGR0fITXNwGnQfQHv9KS-XgY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/android/server/om/OverlayManagerSettings;->lambda$bXuJGR0fITXNwGnQfQHv9KS-XgY()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method
