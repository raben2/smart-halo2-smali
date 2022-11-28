.class public final Lcom/google/cloud/audit/AuditLog$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AuditLog.java"

# interfaces
.implements Lcom/google/cloud/audit/AuditLogOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cloud/audit/AuditLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/cloud/audit/AuditLog;",
        "Lcom/google/cloud/audit/AuditLog$Builder;",
        ">;",
        "Lcom/google/cloud/audit/AuditLogOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1016
    invoke-static {}, Lcom/google/cloud/audit/AuditLog;->access$000()Lcom/google/cloud/audit/AuditLog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/cloud/audit/AuditLog$1;)V
    .locals 0

    .line 1009
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAuthorizationInfo(Ljava/lang/Iterable;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/cloud/audit/AuthorizationInfo;",
            ">;)",
            "Lcom/google/cloud/audit/AuditLog$Builder;"
        }
    .end annotation

    .line 1598
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1599
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$2100(Lcom/google/cloud/audit/AuditLog;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAuthorizationInfo(ILcom/google/cloud/audit/AuthorizationInfo$Builder;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1582
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1583
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    .line 1584
    invoke-virtual {p2}, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/cloud/audit/AuthorizationInfo;

    .line 1583
    invoke-static {v0, p1, p2}, Lcom/google/cloud/audit/AuditLog;->access$2000(Lcom/google/cloud/audit/AuditLog;ILcom/google/cloud/audit/AuthorizationInfo;)V

    return-object p0
.end method

.method public addAuthorizationInfo(ILcom/google/cloud/audit/AuthorizationInfo;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1552
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1553
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1, p2}, Lcom/google/cloud/audit/AuditLog;->access$2000(Lcom/google/cloud/audit/AuditLog;ILcom/google/cloud/audit/AuthorizationInfo;)V

    return-object p0
.end method

.method public addAuthorizationInfo(Lcom/google/cloud/audit/AuthorizationInfo$Builder;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1567
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1568
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$1900(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/AuthorizationInfo;)V

    return-object p0
.end method

.method public addAuthorizationInfo(Lcom/google/cloud/audit/AuthorizationInfo;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1537
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1538
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$1900(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/AuthorizationInfo;)V

    return-object p0
.end method

.method public clearAuthenticationInfo()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1452
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1453
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$1700(Lcom/google/cloud/audit/AuditLog;)V

    return-object p0
.end method

.method public clearAuthorizationInfo()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1612
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1613
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$2200(Lcom/google/cloud/audit/AuditLog;)V

    return-object p0
.end method

.method public clearMethodName()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1160
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$500(Lcom/google/cloud/audit/AuditLog;)V

    return-object p0
.end method

.method public clearNumResponseItems()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1310
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1311
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$1100(Lcom/google/cloud/audit/AuditLog;)V

    return-object p0
.end method

.method public clearRequest()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1798
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1799
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$2900(Lcom/google/cloud/audit/AuditLog;)V

    return-object p0
.end method

.method public clearRequestMetadata()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1697
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1698
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$2600(Lcom/google/cloud/audit/AuditLog;)V

    return-object p0
.end method

.method public clearResourceName()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1248
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1249
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$800(Lcom/google/cloud/audit/AuditLog;)V

    return-object p0
.end method

.method public clearResponse()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1899
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1900
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$3200(Lcom/google/cloud/audit/AuditLog;)V

    return-object p0
.end method

.method public clearServiceData()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1976
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1977
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$3500(Lcom/google/cloud/audit/AuditLog;)V

    return-object p0
.end method

.method public clearServiceName()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1073
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1074
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$200(Lcom/google/cloud/audit/AuditLog;)V

    return-object p0
.end method

.method public clearStatus()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1381
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1382
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$1400(Lcom/google/cloud/audit/AuditLog;)V

    return-object p0
.end method

.method public getAuthenticationInfo()Lcom/google/cloud/audit/AuthenticationInfo;
    .locals 1

    .line 1406
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getAuthenticationInfo()Lcom/google/cloud/audit/AuthenticationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationInfo(I)Lcom/google/cloud/audit/AuthorizationInfo;
    .locals 1

    .line 1494
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0, p1}, Lcom/google/cloud/audit/AuditLog;->getAuthorizationInfo(I)Lcom/google/cloud/audit/AuthorizationInfo;

    move-result-object p1

    return-object p1
.end method

.method public getAuthorizationInfoCount()I
    .locals 1

    .line 1482
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getAuthorizationInfoCount()I

    move-result v0

    return v0
.end method

.method public getAuthorizationInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/cloud/audit/AuthorizationInfo;",
            ">;"
        }
    .end annotation

    .line 1468
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    .line 1469
    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getAuthorizationInfoList()Ljava/util/List;

    move-result-object v0

    .line 1468
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 1108
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1125
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getMethodNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumResponseItems()J
    .locals 2

    .line 1283
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getNumResponseItems()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequest()Lcom/google/protobuf/Struct;
    .locals 1

    .line 1732
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getRequest()Lcom/google/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMetadata()Lcom/google/cloud/audit/RequestMetadata;
    .locals 1

    .line 1651
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getRequestMetadata()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getResourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1214
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getResourceNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/google/protobuf/Struct;
    .locals 1

    .line 1833
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getResponse()Lcom/google/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getServiceData()Lcom/google/protobuf/Any;
    .locals 1

    .line 1926
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getServiceData()Lcom/google/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getServiceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1045
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getServiceNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/rpc/Status;
    .locals 1

    .line 1335
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getStatus()Lcom/google/rpc/Status;

    move-result-object v0

    return-object v0
.end method

.method public hasAuthenticationInfo()Z
    .locals 1

    .line 1395
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->hasAuthenticationInfo()Z

    move-result v0

    return v0
.end method

.method public hasRequest()Z
    .locals 1

    .line 1716
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->hasRequest()Z

    move-result v0

    return v0
.end method

.method public hasRequestMetadata()Z
    .locals 1

    .line 1640
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->hasRequestMetadata()Z

    move-result v0

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .line 1817
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->hasResponse()Z

    move-result v0

    return v0
.end method

.method public hasServiceData()Z
    .locals 1

    .line 1914
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->hasServiceData()Z

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .line 1324
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->hasStatus()Z

    move-result v0

    return v0
.end method

.method public mergeAuthenticationInfo(Lcom/google/cloud/audit/AuthenticationInfo;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1441
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1442
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$1600(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/AuthenticationInfo;)V

    return-object p0
.end method

.method public mergeRequest(Lcom/google/protobuf/Struct;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1782
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1783
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$2800(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)V

    return-object p0
.end method

.method public mergeRequestMetadata(Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1686
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1687
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$2500(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/RequestMetadata;)V

    return-object p0
.end method

.method public mergeResponse(Lcom/google/protobuf/Struct;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1883
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1884
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$3100(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)V

    return-object p0
.end method

.method public mergeServiceData(Lcom/google/protobuf/Any;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1964
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1965
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$3400(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public mergeStatus(Lcom/google/rpc/Status;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1370
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1371
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$1300(Lcom/google/cloud/audit/AuditLog;Lcom/google/rpc/Status;)V

    return-object p0
.end method

.method public removeAuthorizationInfo(I)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1627
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$2300(Lcom/google/cloud/audit/AuditLog;I)V

    return-object p0
.end method

.method public setAuthenticationInfo(Lcom/google/cloud/audit/AuthenticationInfo$Builder;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1429
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1430
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuthenticationInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/AuthenticationInfo;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$1500(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/AuthenticationInfo;)V

    return-object p0
.end method

.method public setAuthenticationInfo(Lcom/google/cloud/audit/AuthenticationInfo;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1416
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1417
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$1500(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/AuthenticationInfo;)V

    return-object p0
.end method

.method public setAuthorizationInfo(ILcom/google/cloud/audit/AuthorizationInfo$Builder;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1522
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1523
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    .line 1524
    invoke-virtual {p2}, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/cloud/audit/AuthorizationInfo;

    .line 1523
    invoke-static {v0, p1, p2}, Lcom/google/cloud/audit/AuditLog;->access$1800(Lcom/google/cloud/audit/AuditLog;ILcom/google/cloud/audit/AuthorizationInfo;)V

    return-object p0
.end method

.method public setAuthorizationInfo(ILcom/google/cloud/audit/AuthorizationInfo;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1507
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1508
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1, p2}, Lcom/google/cloud/audit/AuditLog;->access$1800(Lcom/google/cloud/audit/AuditLog;ILcom/google/cloud/audit/AuthorizationInfo;)V

    return-object p0
.end method

.method public setMethodName(Ljava/lang/String;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1142
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1143
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$400(Lcom/google/cloud/audit/AuditLog;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMethodNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1178
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1179
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$600(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNumResponseItems(J)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1296
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1297
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1, p2}, Lcom/google/cloud/audit/AuditLog;->access$1000(Lcom/google/cloud/audit/AuditLog;J)V

    return-object p0
.end method

.method public setRequest(Lcom/google/protobuf/Struct$Builder;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1765
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1766
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Struct;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$2700(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)V

    return-object p0
.end method

.method public setRequest(Lcom/google/protobuf/Struct;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1747
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1748
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$2700(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)V

    return-object p0
.end method

.method public setRequestMetadata(Lcom/google/cloud/audit/RequestMetadata$Builder;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1674
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1675
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {p1}, Lcom/google/cloud/audit/RequestMetadata$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$2400(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/RequestMetadata;)V

    return-object p0
.end method

.method public setRequestMetadata(Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1661
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1662
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$2400(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/RequestMetadata;)V

    return-object p0
.end method

.method public setResourceName(Ljava/lang/String;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1231
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1232
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$700(Lcom/google/cloud/audit/AuditLog;Ljava/lang/String;)V

    return-object p0
.end method

.method public setResourceNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1267
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1268
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$900(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setResponse(Lcom/google/protobuf/Struct$Builder;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1866
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1867
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Struct;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$3000(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)V

    return-object p0
.end method

.method public setResponse(Lcom/google/protobuf/Struct;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1848
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1849
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$3000(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)V

    return-object p0
.end method

.method public setServiceData(Lcom/google/protobuf/Any$Builder;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1951
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1952
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$3300(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public setServiceData(Lcom/google/protobuf/Any;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1937
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1938
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$3300(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public setServiceName(Ljava/lang/String;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1059
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1060
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$100(Lcom/google/cloud/audit/AuditLog;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1090
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$300(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setStatus(Lcom/google/rpc/Status$Builder;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1358
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1359
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {p1}, Lcom/google/rpc/Status$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/Status;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$1200(Lcom/google/cloud/audit/AuditLog;Lcom/google/rpc/Status;)V

    return-object p0
.end method

.method public setStatus(Lcom/google/rpc/Status;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1345
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1346
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$1200(Lcom/google/cloud/audit/AuditLog;Lcom/google/rpc/Status;)V

    return-object p0
.end method
