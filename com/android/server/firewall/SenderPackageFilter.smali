.class public Lcom/android/server/firewall/SenderPackageFilter;
.super Ljava/lang/Object;
.source "SenderPackageFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;


# instance fields
.field public final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 63
    new-instance v0, Lcom/android/server/firewall/SenderPackageFilter$1;

    const-string/jumbo v1, "sender-package"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderPackageFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/SenderPackageFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/firewall/SenderPackageFilter;->mPackageName:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .registers 14
    .param p1, "ifw"    # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "resolvedComponent"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callerUid"    # I
    .param p5, "callerPid"    # I
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "receivingUid"    # I

    .line 44
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 46
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, -0x1

    move v2, v1

    .line 50
    .local v2, "packageUid":I
    const/4 v3, 0x0

    :try_start_7
    iget-object v4, p0, Lcom/android/server/firewall/SenderPackageFilter;->mPackageName:Ljava/lang/String;

    const/high16 v5, 0x400000

    invoke-interface {v0, v4, v5, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v4
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_11

    move v2, v4

    .line 54
    goto :goto_12

    .line 52
    :catch_11
    move-exception v4

    .line 56
    :goto_12
    if-ne v2, v1, :cond_15

    .line 57
    return v3

    .line 60
    :cond_15
    invoke-static {v2, p4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    return v1
.end method
