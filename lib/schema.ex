defmodule ExCdrPusher.CDR do
  use Ecto.Schema

  # dialer_cdr is the DB table
  schema "dialer_cdr" do
    field :request_uuid,      :string, default: ""
    field :callid,            :string
    field :callerid,          :string
    field :phone_number,      :string
    field :starting_date,     Ecto.DateTime
    field :duration,          :integer, default: 0
    field :billsec,           :integer, default: 0
    field :disposition,       :string
    field :hangup_cause,      :string
    field :hangup_cause_q850, :string
    field :leg_type,          :integer
    field :amd_status,        :integer
    field :callrequest,       :integer
    field :used_gateway_id,   :integer
    field :user_id,           :integer
    field :billed_duration,   :integer
    field :call_cost,         :float, default: 0.0
  end
end

# alias ExCdrPusher.Repo
# alias ExCdrPusher.CDR
# newcdr = %CDR{request_uuid: "xxx", callid: "xxx", callerid: "800000", phone_number: "650784355", starting_date: %Ecto.DateTime{year: 2015, month: 1, day: 23, hour: 23, min: 50, sec: 07, usec: 0}}
# Repo.insert!(newcdr)

# %Ecto.DateTime{year: 2015, month: 1, day: 23, hour: 23, min: 50, sec: 07, usec: 0}

# mycdr = Repo.get(CDR, 50081)

# [mycdr] = Repo.all(from(c in CDR, where: c.id == 42, preload: :post))

 # id                | integer                  | not null default nextval('dialer_cdr_id_seq'::regclass)
 # request_uuid      | character varying(120)   |
 # callid            | character varying(120)   | not null
 # callerid          | character varying(120)   | not null
 # phone_number      | character varying(120)   |
 # starting_date     | timestamp with time zone | not null
 # duration          | integer                  |
 # billsec           | integer                  |
 # progresssec       | integer                  |
 # answersec         | integer                  |
 # waitsec           | integer                  |
 # disposition       | character varying(40)    |
 # hangup_cause      | character varying(40)    |
 # hangup_cause_q850 | character varying(10)    |
 # leg_type          | smallint                 |
 # amd_status        | smallint                 |
 # callrequest       | integer                  |
 # used_gateway_id   | integer                  |
 # user_id           | integer                  | not null
 # billed_duration   | integer                  | not null
 # call_cost         | numeric(10,5)            | not null
