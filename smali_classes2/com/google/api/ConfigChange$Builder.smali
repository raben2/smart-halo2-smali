.class public final Lcom/google/api/ConfigChange$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ConfigChange.java"

# interfaces
.implements Lcom/google/api/ConfigChangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/ConfigChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/ConfigChange;",
        "Lcom/google/api/ConfigChange$Builder;",
        ">;",
        "Lcom/google/api/ConfigChangeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 588
    invoke-static {}, Lcom/google/api/ConfigChange;->access$000()Lcom/google/api/ConfigChange;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/ConfigChange$1;)V
    .locals 0

    .line 581
    invoke-direct {p0}, Lcom/google/api/ConfigChange$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAdvices(ILcom/google/api/Advice$Builder;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 1031
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 1032
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    .line 1033
    invoke-virtual {p2}, Lcom/google/api/Advice$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Advice;

    .line 1032
    invoke-static {v0, p1, p2}, Lcom/google/api/ConfigChange;->access$1500(Lcom/google/api/ConfigChange;ILcom/google/api/Advice;)V

    return-object p0
.end method

.method public addAdvices(ILcom/google/api/Advice;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 1003
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 1004
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1, p2}, Lcom/google/api/ConfigChange;->access$1500(Lcom/google/api/ConfigChange;ILcom/google/api/Advice;)V

    return-object p0
.end method

.method public addAdvices(Lcom/google/api/Advice$Builder;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 1017
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 1018
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {p1}, Lcom/google/api/Advice$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Advice;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$1400(Lcom/google/api/ConfigChange;Lcom/google/api/Advice;)V

    return-object p0
.end method

.method public addAdvices(Lcom/google/api/Advice;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 989
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 990
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$1400(Lcom/google/api/ConfigChange;Lcom/google/api/Advice;)V

    return-object p0
.end method

.method public addAllAdvices(Ljava/lang/Iterable;)Lcom/google/api/ConfigChange$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Advice;",
            ">;)",
            "Lcom/google/api/ConfigChange$Builder;"
        }
    .end annotation

    .line 1046
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 1047
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$1600(Lcom/google/api/ConfigChange;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public clearAdvices()Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 1059
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 1060
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0}, Lcom/google/api/ConfigChange;->access$1700(Lcom/google/api/ConfigChange;)V

    return-object p0
.end method

.method public clearChangeType()Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 910
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 911
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0}, Lcom/google/api/ConfigChange;->access$1200(Lcom/google/api/ConfigChange;)V

    return-object p0
.end method

.method public clearElement()Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 673
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 674
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0}, Lcom/google/api/ConfigChange;->access$200(Lcom/google/api/ConfigChange;)V

    return-object p0
.end method

.method public clearNewValue()Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 828
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 829
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0}, Lcom/google/api/ConfigChange;->access$800(Lcom/google/api/ConfigChange;)V

    return-object p0
.end method

.method public clearOldValue()Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 754
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 755
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0}, Lcom/google/api/ConfigChange;->access$500(Lcom/google/api/ConfigChange;)V

    return-object p0
.end method

.method public getAdvices(I)Lcom/google/api/Advice;
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0, p1}, Lcom/google/api/ConfigChange;->getAdvices(I)Lcom/google/api/Advice;

    move-result-object p1

    return-object p1
.end method

.method public getAdvicesCount()I
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getAdvicesCount()I

    move-result v0

    return v0
.end method

.method public getAdvicesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Advice;",
            ">;"
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    .line 926
    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getAdvicesList()Ljava/util/List;

    move-result-object v0

    .line 925
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChangeType()Lcom/google/api/ChangeType;
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getChangeType()Lcom/google/api/ChangeType;

    move-result-object v0

    return-object v0
.end method

.method public getChangeTypeValue()I
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getChangeTypeValue()I

    move-result v0

    return v0
.end method

.method public getElement()Ljava/lang/String;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getElementBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNewValue()Ljava/lang/String;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getNewValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getNewValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOldValue()Ljava/lang/String;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getOldValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOldValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getOldValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeAdvices(I)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 1072
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 1073
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$1800(Lcom/google/api/ConfigChange;I)V

    return-object p0
.end method

.method public setAdvices(ILcom/google/api/Advice$Builder;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 975
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 976
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    .line 977
    invoke-virtual {p2}, Lcom/google/api/Advice$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Advice;

    .line 976
    invoke-static {v0, p1, p2}, Lcom/google/api/ConfigChange;->access$1300(Lcom/google/api/ConfigChange;ILcom/google/api/Advice;)V

    return-object p0
.end method

.method public setAdvices(ILcom/google/api/Advice;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 961
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 962
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1, p2}, Lcom/google/api/ConfigChange;->access$1300(Lcom/google/api/ConfigChange;ILcom/google/api/Advice;)V

    return-object p0
.end method

.method public setChangeType(Lcom/google/api/ChangeType;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 897
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 898
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$1100(Lcom/google/api/ConfigChange;Lcom/google/api/ChangeType;)V

    return-object p0
.end method

.method public setChangeTypeValue(I)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 871
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 872
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$1000(Lcom/google/api/ConfigChange;I)V

    return-object p0
.end method

.method public setElement(Ljava/lang/String;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 652
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 653
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$100(Lcom/google/api/ConfigChange;Ljava/lang/String;)V

    return-object p0
.end method

.method public setElementBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 696
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 697
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$300(Lcom/google/api/ConfigChange;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNewValue(Ljava/lang/String;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 814
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 815
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$700(Lcom/google/api/ConfigChange;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNewValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 844
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 845
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$900(Lcom/google/api/ConfigChange;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOldValue(Ljava/lang/String;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 740
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 741
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$400(Lcom/google/api/ConfigChange;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOldValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 770
    invoke-virtual {p0}, Lcom/google/api/ConfigChange$Builder;->copyOnWrite()V

    .line 771
    iget-object v0, p0, Lcom/google/api/ConfigChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ConfigChange;

    invoke-static {v0, p1}, Lcom/google/api/ConfigChange;->access$600(Lcom/google/api/ConfigChange;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
