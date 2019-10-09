.class public final synthetic Landroid/net/ip/-$$Lambda$IpClient$3$97DqfCdvF_DK1fYMrSYfnetT_aU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/ip/IpClient$3;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ip/IpClient$3;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/ip/-$$Lambda$IpClient$3$97DqfCdvF_DK1fYMrSYfnetT_aU;->f$0:Landroid/net/ip/IpClient$3;

    iput-object p2, p0, Landroid/net/ip/-$$Lambda$IpClient$3$97DqfCdvF_DK1fYMrSYfnetT_aU;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/net/ip/-$$Lambda$IpClient$3$97DqfCdvF_DK1fYMrSYfnetT_aU;->f$0:Landroid/net/ip/IpClient$3;

    iget-object v1, p0, Landroid/net/ip/-$$Lambda$IpClient$3$97DqfCdvF_DK1fYMrSYfnetT_aU;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/ip/IpClient$3;->lambda$logMsg$0(Landroid/net/ip/IpClient$3;Ljava/lang/String;)V

    return-void
.end method
