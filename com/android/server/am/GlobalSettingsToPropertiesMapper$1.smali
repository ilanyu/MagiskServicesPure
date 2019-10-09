.class Lcom/android/server/am/GlobalSettingsToPropertiesMapper$1;
.super Landroid/database/ContentObserver;
.source "GlobalSettingsToPropertiesMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->updatePropertiesFromGlobalSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/GlobalSettingsToPropertiesMapper;

.field final synthetic val$propName:Ljava/lang/String;

.field final synthetic val$settingName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/GlobalSettingsToPropertiesMapper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/GlobalSettingsToPropertiesMapper;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper$1;->this$0:Lcom/android/server/am/GlobalSettingsToPropertiesMapper;

    iput-object p3, p0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper$1;->val$settingName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper$1;->val$propName:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .line 72
    iget-object v0, p0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper$1;->this$0:Lcom/android/server/am/GlobalSettingsToPropertiesMapper;

    iget-object v1, p0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper$1;->val$settingName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper$1;->val$propName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method
