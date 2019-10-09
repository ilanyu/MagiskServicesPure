.class public final synthetic Lcom/android/server/pm/-$$Lambda$ShortcutService$OcNf5Tg_F4Us34H7SfC_e_tnGzw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$OcNf5Tg_F4Us34H7SfC_e_tnGzw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$OcNf5Tg_F4Us34H7SfC_e_tnGzw;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$ShortcutService$OcNf5Tg_F4Us34H7SfC_e_tnGzw;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutService$OcNf5Tg_F4Us34H7SfC_e_tnGzw;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutService$OcNf5Tg_F4Us34H7SfC_e_tnGzw;

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

    check-cast p1, Lcom/android/server/pm/ShortcutUser;

    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->lambda$handleLocaleChanged$5(Lcom/android/server/pm/ShortcutUser;)V

    return-void
.end method
