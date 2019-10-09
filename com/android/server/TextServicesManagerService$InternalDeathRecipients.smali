.class final Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;
.super Landroid/os/RemoteCallbackList;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalDeathRecipients"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Lcom/android/internal/textservice/ISpellCheckerSessionListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)V
    .registers 2
    .param p1, "group"    # Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 1035
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 1036
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->mGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 1037
    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .registers 2

    .line 1031
    check-cast p1, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {p0, p1}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->onCallbackDied(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    return-void
.end method

.method public onCallbackDied(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 1041
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;->mGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v0, p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    .line 1042
    return-void
.end method
