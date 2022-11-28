.class public final Lcom/google/api/ContextRule$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContextRule.java"

# interfaces
.implements Lcom/google/api/ContextRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/ContextRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/ContextRule;",
        "Lcom/google/api/ContextRule$Builder;",
        ">;",
        "Lcom/google/api/ContextRuleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 724
    invoke-static {}, Lcom/google/api/ContextRule;->access$000()Lcom/google/api/ContextRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/ContextRule$1;)V
    .locals 0

    .line 717
    invoke-direct {p0}, Lcom/google/api/ContextRule$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAllowedRequestExtensions(Ljava/lang/Iterable;)Lcom/google/api/ContextRule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/ContextRule$Builder;"
        }
    .end annotation

    .line 1160
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1161
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$1600(Lcom/google/api/ContextRule;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllAllowedResponseExtensions(Ljava/lang/Iterable;)Lcom/google/api/ContextRule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/ContextRule$Builder;"
        }
    .end annotation

    .line 1297
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1298
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$2100(Lcom/google/api/ContextRule;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllProvided(Ljava/lang/Iterable;)Lcom/google/api/ContextRule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/ContextRule$Builder;"
        }
    .end annotation

    .line 1025
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1026
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$1100(Lcom/google/api/ContextRule;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllRequested(Ljava/lang/Iterable;)Lcom/google/api/ContextRule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/ContextRule$Builder;"
        }
    .end annotation

    .line 897
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 898
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$600(Lcom/google/api/ContextRule;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllowedRequestExtensions(Ljava/lang/String;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1144
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1145
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$1500(Lcom/google/api/ContextRule;Ljava/lang/String;)V

    return-object p0
.end method

.method public addAllowedRequestExtensionsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1190
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1191
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$1800(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addAllowedResponseExtensions(Ljava/lang/String;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1281
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1282
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$2000(Lcom/google/api/ContextRule;Ljava/lang/String;)V

    return-object p0
.end method

.method public addAllowedResponseExtensionsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1327
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1328
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$2300(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addProvided(Ljava/lang/String;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1010
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1011
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$1000(Lcom/google/api/ContextRule;Ljava/lang/String;)V

    return-object p0
.end method

.method public addProvidedBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1053
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1054
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$1300(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addRequested(Ljava/lang/String;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 882
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 883
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$500(Lcom/google/api/ContextRule;Ljava/lang/String;)V

    return-object p0
.end method

.method public addRequestedBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 925
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 926
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$800(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearAllowedRequestExtensions()Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1174
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1175
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0}, Lcom/google/api/ContextRule;->access$1700(Lcom/google/api/ContextRule;)V

    return-object p0
.end method

.method public clearAllowedResponseExtensions()Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1311
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1312
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0}, Lcom/google/api/ContextRule;->access$2200(Lcom/google/api/ContextRule;)V

    return-object p0
.end method

.method public clearProvided()Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1038
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1039
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0}, Lcom/google/api/ContextRule;->access$1200(Lcom/google/api/ContextRule;)V

    return-object p0
.end method

.method public clearRequested()Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 910
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 911
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0}, Lcom/google/api/ContextRule;->access$700(Lcom/google/api/ContextRule;)V

    return-object p0
.end method

.method public clearSelector()Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 781
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 782
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0}, Lcom/google/api/ContextRule;->access$200(Lcom/google/api/ContextRule;)V

    return-object p0
.end method

.method public getAllowedRequestExtensions(I)Ljava/lang/String;
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0, p1}, Lcom/google/api/ContextRule;->getAllowedRequestExtensions(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAllowedRequestExtensionsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0, p1}, Lcom/google/api/ContextRule;->getAllowedRequestExtensionsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAllowedRequestExtensionsCount()I
    .locals 1

    .line 1084
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getAllowedRequestExtensionsCount()I

    move-result v0

    return v0
.end method

.method public getAllowedRequestExtensionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1070
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    .line 1071
    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getAllowedRequestExtensionsList()Ljava/util/List;

    move-result-object v0

    .line 1070
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedResponseExtensions(I)Ljava/lang/String;
    .locals 1

    .line 1235
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0, p1}, Lcom/google/api/ContextRule;->getAllowedResponseExtensions(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAllowedResponseExtensionsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0, p1}, Lcom/google/api/ContextRule;->getAllowedResponseExtensionsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAllowedResponseExtensionsCount()I
    .locals 1

    .line 1221
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getAllowedResponseExtensionsCount()I

    move-result v0

    return v0
.end method

.method public getAllowedResponseExtensionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1207
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    .line 1208
    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getAllowedResponseExtensionsList()Ljava/util/List;

    move-result-object v0

    .line 1207
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProvided(I)Ljava/lang/String;
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0, p1}, Lcom/google/api/ContextRule;->getProvided(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProvidedBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0, p1}, Lcom/google/api/ContextRule;->getProvidedBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getProvidedCount()I
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getProvidedCount()I

    move-result v0

    return v0
.end method

.method public getProvidedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 941
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    .line 942
    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getProvidedList()Ljava/util/List;

    move-result-object v0

    .line 941
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequested(I)Ljava/lang/String;
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0, p1}, Lcom/google/api/ContextRule;->getRequested(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRequestedBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0, p1}, Lcom/google/api/ContextRule;->getRequestedBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getRequestedCount()I
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getRequestedCount()I

    move-result v0

    return v0
.end method

.method public getRequestedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    .line 814
    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getRequestedList()Ljava/util/List;

    move-result-object v0

    .line 813
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-virtual {v0}, Lcom/google/api/ContextRule;->getSelectorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAllowedRequestExtensions(ILjava/lang/String;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1128
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1129
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/ContextRule;->access$1400(Lcom/google/api/ContextRule;ILjava/lang/String;)V

    return-object p0
.end method

.method public setAllowedResponseExtensions(ILjava/lang/String;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 1265
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 1266
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/ContextRule;->access$1900(Lcom/google/api/ContextRule;ILjava/lang/String;)V

    return-object p0
.end method

.method public setProvided(ILjava/lang/String;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 995
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 996
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/ContextRule;->access$900(Lcom/google/api/ContextRule;ILjava/lang/String;)V

    return-object p0
.end method

.method public setRequested(ILjava/lang/String;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 867
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 868
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/ContextRule;->access$400(Lcom/google/api/ContextRule;ILjava/lang/String;)V

    return-object p0
.end method

.method public setSelector(Ljava/lang/String;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 767
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 768
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$100(Lcom/google/api/ContextRule;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSelectorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ContextRule$Builder;
    .locals 1

    .line 797
    invoke-virtual {p0}, Lcom/google/api/ContextRule$Builder;->copyOnWrite()V

    .line 798
    iget-object v0, p0, Lcom/google/api/ContextRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ContextRule;

    invoke-static {v0, p1}, Lcom/google/api/ContextRule;->access$300(Lcom/google/api/ContextRule;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
