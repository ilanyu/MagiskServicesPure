.class public final synthetic Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$bdv3Vfadbb8b9nrSgkARO4oYOXU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$bdv3Vfadbb8b9nrSgkARO4oYOXU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$bdv3Vfadbb8b9nrSgkARO4oYOXU;

    invoke-direct {v0}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$bdv3Vfadbb8b9nrSgkARO4oYOXU;-><init>()V

    sput-object v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$bdv3Vfadbb8b9nrSgkARO4oYOXU;->INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$bdv3Vfadbb8b9nrSgkARO4oYOXU;

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

    check-cast p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->lambda$getAssociations$0(Lcom/android/server/companion/CompanionDeviceManagerService$Association;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
