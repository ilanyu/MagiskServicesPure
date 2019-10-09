.class Lcom/android/server/am/ServiceRecord$StartItem;
.super Ljava/lang/Object;
.source "ServiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ServiceRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartItem"
.end annotation


# instance fields
.field final callingId:I

.field deliveredTime:J

.field deliveryCount:I

.field doneExecutingCount:I

.field final id:I

.field final intent:Landroid/content/Intent;

.field final neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

.field final sr:Lcom/android/server/am/ServiceRecord;

.field stringName:Ljava/lang/String;

.field final taskRemoved:Z

.field uriPermissions:Lcom/android/server/am/UriPermissionOwner;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;I)V
    .registers 7
    .param p1, "_sr"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "_taskRemoved"    # Z
    .param p3, "_id"    # I
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_neededGrants"    # Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
    .param p6, "_callingId"    # I

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    .line 145
    iput-boolean p2, p0, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    .line 146
    iput p3, p0, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    .line 147
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    .line 148
    iput-object p5, p0, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    .line 149
    iput p6, p0, Lcom/android/server/am/ServiceRecord$StartItem;->callingId:I

    .line 150
    return-void
.end method


# virtual methods
.method getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-nez v0, :cond_f

    .line 154
    new-instance v0, Lcom/android/server/am/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/UriPermissionOwner;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    .line 156
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    return-object v0
.end method

.method removeUriPermissionsLocked()V
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v0, :cond_c

    .line 161
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    .line 164
    :cond_c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 188
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->stringName:Ljava/lang/String;

    return-object v0

    .line 190
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 191
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ServiceRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    .line 192
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " StartItem "

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id="

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JJ)V
    .registers 18
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "now"    # J

    move-object v0, p0

    move-object v9, p1

    .line 167
    invoke-virtual {v9, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 168
    .local v10, "token":J
    iget v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    const-wide v2, 0x10500000001L

    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 169
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    const-wide v2, 0x10b00000002L

    move-object v1, v9

    move-wide/from16 v6, p4

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 171
    iget v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    const-wide v2, 0x10500000003L

    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 172
    iget v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    const-wide v2, 0x10500000004L

    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 173
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_44

    .line 174
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    const-wide v3, 0x10b00000005L

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v9

    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 177
    :cond_44
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    if-eqz v1, :cond_52

    .line 178
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/am/ActivityManagerService$NeededUriGrants;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 180
    :cond_52
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v1, :cond_60

    .line 181
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    const-wide v2, 0x10b00000007L

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/am/UriPermissionOwner;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 183
    :cond_60
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 184
    return-void
.end method
