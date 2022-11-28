.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CommonTypesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTimeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTimeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 847
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$000()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V
    .locals 0

    .line 840
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDate()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    .line 917
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->copyOnWrite()V

    .line 918
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$300(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)V

    return-object p0
.end method

.method public clearTime()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    .line 988
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->copyOnWrite()V

    .line 989
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$600(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)V

    return-object p0
.end method

.method public clearTimeZone()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    .line 1050
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->copyOnWrite()V

    .line 1051
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$800(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)V

    return-object p0
.end method

.method public getDate()Lcom/google/type/Date;
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->getDate()Lcom/google/type/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTime()Lcom/google/type/TimeOfDay;
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->getTime()Lcom/google/type/TimeOfDay;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZoneBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->getTimeZoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasDate()Z
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->hasDate()Z

    move-result v0

    return v0
.end method

.method public hasTime()Z
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->hasTime()Z

    move-result v0

    return v0
.end method

.method public mergeDate(Lcom/google/type/Date;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->copyOnWrite()V

    .line 907
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$200(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lcom/google/type/Date;)V

    return-object p0
.end method

.method public mergeTime(Lcom/google/type/TimeOfDay;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    .line 977
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->copyOnWrite()V

    .line 978
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$500(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lcom/google/type/TimeOfDay;)V

    return-object p0
.end method

.method public setDate(Lcom/google/type/Date$Builder;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    .line 894
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->copyOnWrite()V

    .line 895
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {p1}, Lcom/google/type/Date$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/type/Date;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$100(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lcom/google/type/Date;)V

    return-object p0
.end method

.method public setDate(Lcom/google/type/Date;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    .line 881
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->copyOnWrite()V

    .line 882
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$100(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lcom/google/type/Date;)V

    return-object p0
.end method

.method public setTime(Lcom/google/type/TimeOfDay$Builder;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    .line 965
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->copyOnWrite()V

    .line 966
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {p1}, Lcom/google/type/TimeOfDay$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/type/TimeOfDay;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$400(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lcom/google/type/TimeOfDay;)V

    return-object p0
.end method

.method public setTime(Lcom/google/type/TimeOfDay;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    .line 952
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->copyOnWrite()V

    .line 953
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$400(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lcom/google/type/TimeOfDay;)V

    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    .line 1035
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->copyOnWrite()V

    .line 1036
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$700(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTimeZoneBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    .line 1067
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->copyOnWrite()V

    .line 1068
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->access$900(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
