.class public Lcom/android/server/net/NetworkIdentitySet;
.super Ljava/util/HashSet;
.source "NetworkIdentitySet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Landroid/net/NetworkIdentity;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/net/NetworkIdentitySet;",
        ">;"
    }
.end annotation


# static fields
.field private static final VERSION_ADD_DEFAULT_NETWORK:I = 0x5

.field private static final VERSION_ADD_METERED:I = 0x4

.field private static final VERSION_ADD_NETWORK_ID:I = 0x3

.field private static final VERSION_ADD_ROAMING:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .registers 18
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/util/HashSet;-><init>()V

    .line 48
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 49
    .local v0, "version":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 50
    .local v1, "size":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_d
    if-ge v3, v1, :cond_60

    .line 51
    const/4 v4, 0x1

    if-gt v0, v4, :cond_15

    .line 52
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    .line 54
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 55
    .local v13, "type":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 56
    .local v14, "subType":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v15

    .line 58
    .local v15, "subscriberId":Ljava/lang/String;
    const/4 v5, 0x3

    if-lt v0, v5, :cond_2a

    .line 59
    invoke-static/range {p1 .. p1}, Lcom/android/server/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v9, "networkId":Ljava/lang/String;
    :goto_28
    move-object v9, v5

    goto :goto_2c

    .end local v9    # "networkId":Ljava/lang/String;
    :cond_2a
    const/4 v5, 0x0

    goto :goto_28

    .line 64
    .restart local v9    # "networkId":Ljava/lang/String;
    :goto_2c
    const/4 v5, 0x2

    if-lt v0, v5, :cond_35

    .line 65
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    .line 67
    .local v5, "roaming":Z
    move v10, v5

    goto :goto_36

    .end local v5    # "roaming":Z
    :cond_35
    move v10, v2

    .line 71
    .local v10, "roaming":Z
    :goto_36
    const/4 v5, 0x4

    if-lt v0, v5, :cond_3f

    .line 72
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    .line 77
    .local v11, "metered":Z
    :goto_3d
    move v11, v5

    goto :goto_45

    .end local v11    # "metered":Z
    :cond_3f
    if-nez v13, :cond_43

    move v5, v4

    goto :goto_3d

    :cond_43
    move v5, v2

    goto :goto_3d

    .line 81
    .restart local v11    # "metered":Z
    :goto_45
    const/4 v5, 0x5

    if-lt v0, v5, :cond_4e

    .line 82
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    .line 84
    .local v12, "defaultNetwork":Z
    :goto_4c
    move v12, v4

    goto :goto_4f

    .end local v12    # "defaultNetwork":Z
    :cond_4e
    goto :goto_4c

    .line 87
    .restart local v12    # "defaultNetwork":Z
    :goto_4f
    new-instance v4, Landroid/net/NetworkIdentity;

    move-object v5, v4

    move v6, v13

    move v7, v14

    move-object v8, v15

    invoke-direct/range {v5 .. v12}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    move-object/from16 v5, p0

    invoke-virtual {v5, v4}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v9    # "networkId":Ljava/lang/String;
    .end local v10    # "roaming":Z
    .end local v11    # "metered":Z
    .end local v12    # "defaultNetwork":Z
    .end local v13    # "type":I
    .end local v14    # "subType":I
    .end local v15    # "subscriberId":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 90
    .end local v3    # "i":I
    :cond_60
    move-object/from16 v5, p0

    return-void
.end method

.method private static readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .registers 2
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    .line 157
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .registers 3
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    if-eqz p1, :cond_a

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 149
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_e

    .line 151
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 153
    :goto_e
    return-void
.end method


# virtual methods
.method public areAllMembersOnDefaultNetwork()Z
    .registers 5

    .line 135
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 136
    return v1

    .line 138
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkIdentity;

    .line 139
    .local v2, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v2}, Landroid/net/NetworkIdentity;->getDefaultNetwork()Z

    move-result v3

    if-nez v3, :cond_20

    .line 140
    const/4 v0, 0x0

    return v0

    .line 142
    .end local v2    # "ident":Landroid/net/NetworkIdentity;
    :cond_20
    goto :goto_c

    .line 143
    :cond_21
    return v1
.end method

.method public compareTo(Lcom/android/server/net/NetworkIdentitySet;)I
    .registers 5
    .param p1, "another"    # Lcom/android/server/net/NetworkIdentitySet;

    .line 165
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    return v0

    .line 166
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    .line 168
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkIdentity;

    .line 169
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 170
    .local v1, "anotherIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {v0, v1}, Landroid/net/NetworkIdentity;->compareTo(Landroid/net/NetworkIdentity;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 36
    check-cast p1, Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkIdentitySet;->compareTo(Lcom/android/server/net/NetworkIdentitySet;)I

    move-result p1

    return p1
.end method

.method public isAnyMemberMetered()Z
    .registers 5

    .line 108
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 109
    return v1

    .line 111
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkIdentity;

    .line 112
    .local v2, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v2}, Landroid/net/NetworkIdentity;->getMetered()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 113
    const/4 v0, 0x1

    return v0

    .line 115
    .end local v2    # "ident":Landroid/net/NetworkIdentity;
    :cond_20
    goto :goto_c

    .line 116
    :cond_21
    return v1
.end method

.method public isAnyMemberRoaming()Z
    .registers 5

    .line 121
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 122
    return v1

    .line 124
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkIdentity;

    .line 125
    .local v2, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v2}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 126
    const/4 v0, 0x1

    return v0

    .line 128
    .end local v2    # "ident":Landroid/net/NetworkIdentity;
    :cond_20
    goto :goto_c

    .line 129
    :cond_21
    return v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 174
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 176
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkIdentity;

    .line 177
    .local v3, "ident":Landroid/net/NetworkIdentity;
    const-wide v4, 0x20b00000001L

    invoke-virtual {v3, p1, v4, v5}, Landroid/net/NetworkIdentity;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 178
    .end local v3    # "ident":Landroid/net/NetworkIdentity;
    goto :goto_8

    .line 180
    :cond_1d
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 181
    return-void
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 96
    .local v1, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 97
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getSubType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 98
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 101
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getMetered()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 102
    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getDefaultNetwork()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 103
    .end local v1    # "ident":Landroid/net/NetworkIdentity;
    goto :goto_f

    .line 104
    :cond_4d
    return-void
.end method
