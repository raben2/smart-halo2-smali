.class public final Lcom/google/api/MonitoredResourceDescriptor$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MonitoredResourceDescriptor.java"

# interfaces
.implements Lcom/google/api/MonitoredResourceDescriptorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/MonitoredResourceDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/MonitoredResourceDescriptor;",
        "Lcom/google/api/MonitoredResourceDescriptor$Builder;",
        ">;",
        "Lcom/google/api/MonitoredResourceDescriptorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 678
    invoke-static {}, Lcom/google/api/MonitoredResourceDescriptor;->access$000()Lcom/google/api/MonitoredResourceDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/MonitoredResourceDescriptor$1;)V
    .locals 0

    .line 671
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLabels(Ljava/lang/Iterable;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/LabelDescriptor;",
            ">;)",
            "Lcom/google/api/MonitoredResourceDescriptor$Builder;"
        }
    .end annotation

    .line 1154
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1155
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1600(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addLabels(ILcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1138
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1139
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    .line 1140
    invoke-virtual {p2}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/LabelDescriptor;

    .line 1139
    invoke-static {v0, p1, p2}, Lcom/google/api/MonitoredResourceDescriptor;->access$1500(Lcom/google/api/MonitoredResourceDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0
.end method

.method public addLabels(ILcom/google/api/LabelDescriptor;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1108
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1109
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1, p2}, Lcom/google/api/MonitoredResourceDescriptor;->access$1500(Lcom/google/api/MonitoredResourceDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0
.end method

.method public addLabels(Lcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1123
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1124
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {p1}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/LabelDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1400(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/api/LabelDescriptor;)V

    return-object p0
.end method

.method public addLabels(Lcom/google/api/LabelDescriptor;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1093
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1094
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1400(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/api/LabelDescriptor;)V

    return-object p0
.end method

.method public clearDescription()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 992
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 993
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceDescriptor;->access$1100(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0
.end method

.method public clearDisplayName()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 916
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 917
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceDescriptor;->access$800(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0
.end method

.method public clearLabels()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1168
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1169
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceDescriptor;->access$1700(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0
.end method

.method public clearLaunchStage()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1248
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1249
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceDescriptor;->access$2100(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0
.end method

.method public clearName()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 751
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 752
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceDescriptor;->access$200(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0
.end method

.method public clearType()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 833
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 834
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/MonitoredResourceDescriptor;->access$500(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLabels(I)Lcom/google/api/LabelDescriptor;
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->getLabels(I)Lcom/google/api/LabelDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getLabelsCount()I
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getLabelsCount()I

    move-result v0

    return v0
.end method

.method public getLabelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/LabelDescriptor;",
            ">;"
        }
    .end annotation

    .line 1024
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    .line 1025
    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getLabelsList()Ljava/util/List;

    move-result-object v0

    .line 1024
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchStage()Lcom/google/api/LaunchStage;
    .locals 1

    .line 1223
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getLaunchStage()Lcom/google/api/LaunchStage;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchStageValue()I
    .locals 1

    .line 1197
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getLaunchStageValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeLabels(I)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1182
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1183
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1800(Lcom/google/api/MonitoredResourceDescriptor;I)V

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 978
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 979
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1000(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1009
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1200(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 900
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 901
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$700(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 934
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 935
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$900(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLabels(ILcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1078
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1079
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    .line 1080
    invoke-virtual {p2}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/LabelDescriptor;

    .line 1079
    invoke-static {v0, p1, p2}, Lcom/google/api/MonitoredResourceDescriptor;->access$1300(Lcom/google/api/MonitoredResourceDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0
.end method

.method public setLabels(ILcom/google/api/LabelDescriptor;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1063
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1064
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1, p2}, Lcom/google/api/MonitoredResourceDescriptor;->access$1300(Lcom/google/api/MonitoredResourceDescriptor;ILcom/google/api/LabelDescriptor;)V

    return-object p0
.end method

.method public setLaunchStage(Lcom/google/api/LaunchStage;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1235
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1236
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$2000(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/api/LaunchStage;)V

    return-object p0
.end method

.method public setLaunchStageValue(I)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 1209
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 1210
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$1900(Lcom/google/api/MonitoredResourceDescriptor;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 733
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 734
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$100(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 771
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 772
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$300(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 818
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 819
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$400(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 850
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->copyOnWrite()V

    .line 851
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->access$600(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
