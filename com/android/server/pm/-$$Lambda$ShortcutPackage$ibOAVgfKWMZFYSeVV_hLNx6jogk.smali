.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutPackage$ibOAVgfKWMZFYSeVV_hLNx6jogk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$ibOAVgfKWMZFYSeVV_hLNx6jogk;->f$0:Lcom/android/server/pm/ShortcutPackage;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$ShortcutPackage$ibOAVgfKWMZFYSeVV_hLNx6jogk;->f$0:Lcom/android/server/pm/ShortcutPackage;

    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    invoke-static {v0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$refreshPinnedFlags$0(Lcom/android/server/pm/ShortcutPackage;Lcom/android/server/pm/ShortcutLauncher;)V

    return-void
.end method
