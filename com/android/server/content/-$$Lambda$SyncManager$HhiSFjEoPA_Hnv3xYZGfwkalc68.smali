.class public final synthetic Lcom/android/server/content/-$$Lambda$SyncManager$HhiSFjEoPA_Hnv3xYZGfwkalc68;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/-$$Lambda$SyncManager$HhiSFjEoPA_Hnv3xYZGfwkalc68;->f$0:Lcom/android/server/content/SyncManager;

    return-void
.end method


# virtual methods
.method public final onAppPermissionChanged(Landroid/accounts/Account;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/content/-$$Lambda$SyncManager$HhiSFjEoPA_Hnv3xYZGfwkalc68;->f$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, p1, p2}, Lcom/android/server/content/SyncManager;->lambda$new$0(Lcom/android/server/content/SyncManager;Landroid/accounts/Account;I)V

    return-void
.end method
